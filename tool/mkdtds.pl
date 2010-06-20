#!/usr/bin/perl
use strict;
our $SCRIPT_NAME = 'mkdtds';
our $VERSION = '1.7';
use Path::Class;
use lib file (__FILE__)->dir->subdir ('lib')->stringify;
{require Message::Markup::SuikaWikiConfig20::Parser;

my $parser = new Message::Markup::SuikaWikiConfig20::Parser;
local $/ = undef;
my $src = $parser->parse_text (scalar <>);
my $Info = {};

for my $src ($src->get_attribute ('ModuleSet')
          || $src->get_attribute ('DocumentType')) {
  for (qw/Description/) {
    $Info->{$_} = $src->get_attribute_value ($_);
  }
  for (qw/Name ID Copyright BaseURI Version/) {
    $Info->{$_} = normalize_wsp ($src->get_attribute_value ($_));
  }
  $Info->{realname} = $Info->{Name};
  $Info->{Name} .= ' ' . $Info->{Version} if length $Info->{Version};
  $Info->{ns} = $src->get_attribute ('Namespace');
}

for (@{$src->child_nodes}) {
  if ($_->local_name eq 'Attribute') {
    attrib_module ($_, $Info);
  } elsif ($_->local_name eq 'Datatype') {
    datatype_module ($_, $Info);
  } elsif ($_->local_name eq 'Notation') {
    notation_module ($_, $Info);
  } elsif ($_->local_name eq 'Module') {
    submodule ($_, $Info);
  } elsif ($_->local_name eq 'Model') {
    model_module ($_, $Info);
    $Info->{has_model} = 1;
  } elsif ($_->local_name eq 'Driver') {
    dtd_driver ($_, $Info);
  }
}

if (ref $src->get_attribute ('ModuleSet')) {
  qname_module ($src->get_attribute ('ModuleSet'), $Info);
}
exit}

sub normalize_wsp ($;%) {
  my $s = shift;
  $s =~ s/\s+/ /g;
  $s =~ s/^ +//;
  $s =~ s/ +$//;
  $s;
}
sub make_paragraphs ($;%) {
  my ($para, %opt) = @_;
  join "\n\n", map {
    my $s = $_;
    $s =~ s/\n+$//g;
    $s =~ s/\n/\n$opt{indent}/g;
    $opt{indent}.$s;
  } grep {length} @$para;
}

sub dot_padding ($%) {
  my ($s, %opt) = @_;
  if ($opt{length} - length $s > 0) {
    return $s . ( ($opt{dot} or q(.)) x ($opt{length} - length $s) );
  } else {
    return $s;
  }
}

sub submodule_id_of ($$;%) {
  my ($src, $Info, %opt) = @_;
  my $id = $src->get_attribute_value ('ID') || $opt{default};
  unless ($id) {
    die "$0: Submodule identifier not specified";
  }
  $id;
}
sub xml_datatype_of ($$;%) {
  my ($src, $Info, %opt) = @_;
  my $type = $src->get_attribute_value ('XMLType') || $opt{default};
  $type =~ s/\s+//g;
  $type;
}
sub system_id_of ($$;%) {
  my ($src, $Info, %opt) = @_;
  my $sysid = $src->get_attribute_value ('SYSTEM');
  if ($sysid =~ /<([^>]+)>/) {
    return $1;
  } else {
    return $opt{base}.($sysid || $opt{default});
  }
}
sub external_id_of ($$;%) {
  my ($src, $Info, %opt) = @_;
  my $sysid = system_id_of ($src, $Info, %opt);
  my $pubid = $src->get_attribute_value ('PUBLIC');
  if ($pubid) {
    if ($sysid) {
      return qq(PUBLIC "$pubid"\n\t       "$sysid");
    } else {
      return qq(PUBLIC "$pubid");
    }
  } else {
    return qq(SYSTEM "$sysid");
  }
}
sub name_of ($$;%) {
  my ($src, $Info, %opt) = @_;
  unless (ref $src) {require Carp; Carp::croak ('$src undefined')}
  my $name = $src->get_attribute_value ($opt{key} || 'Name');
  if ($name =~ /^:(.+)/) {	## Global namespace
    return $1;
  } elsif ($name =~ /([^:]+):(.+)/) {	## Named space
    return $1.($opt{delim}||'.').$2;
  } else {	## Default namespace
    return $Info->{ID}.($opt{delim}||'.').$name;
  }
}
sub local_name_of ($$;%) {
  my ($src, $Info, %opt) = @_;
  my $name = $src->get_attribute_value ($opt{key} || 'Name');
  if ($name =~ /^:(.+)/) {	## Global namespace
    return $1;
  } elsif ($name =~ /[^:]+:(.+)/) {	## Named space
    return $1;
  } else {	## Default namespace
    return $name;
  }
}
sub set_name_of ($$;%) {
  my ($src, $Info, %opt) = @_;
  my $name = $src->get_attribute_value ($opt{key} || 'Name');
  if ($name =~ /^:.+/) {	## Global namespace
    return 'XHTML';
  } elsif ($name =~ /([^:]+):.+/) {	## Named space
    return $1;
  } else {	## Default namespace
    return $Info->{ID};
  }
}
sub class_name_of ($$;%) {
  my ($src, $Info, %opt) = @_;
  my $name = name_of ($src, $Info, %opt);
  unless ($name =~ /\.(class|mix|content|datatype)$/) {
    $name .= '.class';
  }
  $name;
}
sub convert_content_model ($$;%) {
  my ($src, $Info, %opt) = @_;
  my $model = $src->get_attribute_value ($opt{key} || 'Content') || $opt{default};
  $model =~ s/\s//g;
  my $nonsymbol = qr/[^%#?,\$;()+*|:]/;
  $model =~ s/(?<![%#.])((?:\$|\b)$nonsymbol+(?::$nonsymbol+)?|\$?:$nonsymbol+|"[^"]+")/get_model_token ($1, $Info)/ge;
  $model;
}
sub sparalit ($) {
  my $s = paralit (shift);
  $s =~ s/&/&#x26;/g;
  $s =~ s/%/&#x25;/g;
  $s;
}
sub paralit ($) {
  my $s = shift;
  if ($s =~ /"/) {
    if ($s =~ /'/) {
      $s =~ s/'/&#x27;/g;
      return qq("$s");
    } else {
      return qq('$s');
    }
  } else {
    return qq("$s");
  }
}
sub description ($$;%) {
  my ($src, $Info, %opt) = @_;
  my $desc = $src->get_attribute_value ('Description');
  $desc =~ s/\n/\n     /g;
  unless ($desc) {
    $desc = {
      load_module => {
        AttributeModule => q/Common Attributes Module/,
        DatatypeModule  => q/Datatypes Module/,
        NotationModule  => q/Notation Module/,
        QNameModule     => q/QName Module/,
      },
    }->{$opt{context}}->{$opt{id} || $src->get_attribute_value ($opt{id_key}||'ID')};
  }
  $desc = qq(<!-- $desc -->\n) if $desc;
  $desc;
}
sub xml_condition_section ($$;%) {
  my ($condition, $content, %opt) = @_;
    qq(<![%$condition;[\n)
  . $content
  . qq(<!-- end of $condition -->]]>\n);
}
sub xml_parameter_ENTITY ($%) {
  my ($name, %opt) = @_;
  qq(<!ENTITY % $name @{[paralit $opt{value}]}>\n);
}

sub entity_declaration ($$;%) {
  my ($src, $Info, %opt) = @_;
  my $val;
  if ($src->get_attribute_value ('ID')
   || $src->get_attribute_value ('SYSTEM')
   || $src->get_attribute_value ('PUBLIC')) {
    $val = "\n\t".external_id_of ($src, $Info, default => $src->get_attribute_value ('ID'));
  } elsif (ref $src->get_attribute ('Declaration')) {
    $val = "\n\t".sparalit submodule_declarations ($src->get_attribute ('Declaration'), $Info);
  } else {
    $val = paralit $src->get_attribute_value ('EntityValue');
  }
  my $s = <<EOH;
@{[description ($src, $Info)]}<!ENTITY @{[$opt{param}?'% ':'']}@{[$src->get_attribute_value ('Name')]} $val>

EOH
  $s;
}

sub parameter_entity_declaration ($$%) {
  my ($src, $Info, %opt) = @_;
  my $name = name_of $src, $Info, %opt;
  if (my $sysid = $src->get_attribute_value ('SYSTEM')) {
    if ($sysid =~ /^\s*<([^<>]+)>\s*$/) {
      $sysid = $1;
      $sysid =~ s/([%"])/sprintf '&#x%02X;', ord $1/ge;
    } elsif ($sysid =~ /^([^:]*):(.*)$/) {
      my $ns = $1;
      $sysid = $2;
      $sysid =~ s/([%"])/sprintf '&#x%02X;', ord $1/ge;
      $sysid = '%' . ($ns ? $ns . '.' : '') . 'sysid.base;' . $sysid;
    } else {
      $sysid = '%XHTML.sysid.base;' . $sysid;
    }
    my $r;
    if (my $pubid = $src->get_attribute_value ('PUBLIC')) {
      $r = qq{<!ENTITY % $name.sysid "$sysid">\n} .
           qq{<!ENTITY % $name.fpi "$pubid">\n} .
           qq{<!ENTITY % $name.fpi.defined "INCLUDE">\n};
    } else {
      $r = qq{<!ENTITY % $name.sysid "$sysid">\n} .
           qq{<!ENTITY % $name.fpi "">\n} .
           qq{<!ENTITY % $name.fpi.defined "IGNORE">\n};
    }
    return <<EOH;
@{[get_desc ($src, $Info, prefix => qq(%$name: ),
                   padding_length => 51, padding_dot => q(.),
                   default => qq(%$name))
]}$r
<![%$name.fpi.defined;[
<!ENTITY % $name.decl
\t'PUBLIC "%$name.fpi;"
\t\t"%$name.sysid;"'>
]]>
<!ENTITY % $name.decl
\t'SYSTEM "%$name.sysid;"'>
<!ENTITY % $name %$name.decl;>
<!-- @{[dot_padding qq<%$name >, length => 51, dot => q<.>]} -->
EOH
  } else {
    my $s = get_desc ($src, $Info);
    $s .= qq{<!ENTITY % $name } .
            paralit $src->get_attribute_value ('EntityValue');
    $s .= ">\n";
    return $s;
  }
}

sub dtd_driver ($$) {
  my ($src, $Info) = @_;
  my $s = '';
  my %s;
  my @module_set;
  for my $src (@{$src->child_nodes}) {
    if ($src->local_name eq 'Module') {
      $s .= dtd_driver_load_module ($src, $Info);
    } elsif ($src->local_name eq 'DTD') {
      $s .= dtd_driver_load_dtd ($src, $Info);
    } elsif ($src->local_name eq 'ModuleSet') {
      push @module_set, $src;
    } elsif ($src->local_name =~ /^(?:QName|Attribute|Datatype|Notation)Module/) {
      $s{$src->local_name} .= dtd_driver_load_module ($src, $Info);

    } elsif ($src->local_name eq 'IfModuleSet') {
      my $ms = name_of $src, $Info, key => $src->get_attribute_value ('ID') ?
                                             'ID' : 'ModuleSet';
      $s .= qq(<![%$ms.module;[\n);
      $s .= submodule_declarations ($src, $Info);
      $s .= qq(<!-- end of $ms -->]]>\n\n);

    } elsif ($src->local_name eq 'IfModule') {
      my $ms = name_of $src, $Info, key => 'ID';
      $s .= qq(<![%$ms.module;[\n);
      $s .= submodule_declarations ($src, $Info);
      $s .= qq(<!-- end of $ms -->]]>\n\n);
    } elsif ($src->local_name eq 'ElementSwitch') {
      $s .= qq(<!ENTITY % @{[name_of ($src, $Info)]}.element "@{[$src->get_attribute_value ('Use')>0?'INCLUDE':'IGNORE']}">\n);
    } elsif ($src->local_name eq 'AttributeSwitch') {
      $s .= qq(<!ENTITY % @{[name_of ($src, $Info)]}.attlist "@{[$src->get_attribute_value ('Use')>0?'INCLUDE':'IGNORE']}">\n);
    } elsif ($src->local_name eq 'ModuleSwitch') {
      $s .= qq(<!ENTITY % @{[name_of ($src, $Info)]}.module "@{[$src->get_attribute_value ('Use')>0?'INCLUDE':'IGNORE']}">\n);
    } elsif ($src->local_name eq 'Switch') {
      $s .= qq(<!ENTITY % @{[name_of ($src, $Info)]} "@{[$src->get_attribute_value ('Use')>0?'INCLUDE':'IGNORE']}">\n);
    } elsif ($src->local_name eq 'GeneralEntity') {
      $s .= entity_declaration ($src, $Info, param => 0);
    } elsif ($src->local_name eq 'ParameterEntity') {
      $s .= parameter_entity_declaration ($src, $Info);
    }
  }
  
  $s{ModelModule} = $src->get_attribute_value ('NoModelModule') ? '' :
    $Info->{has_model} ? <<EOH : '';
<!-- Document Model module -->
<!ENTITY % $Info->{ID}-model.module "INCLUDE">
<![%$Info->{ID}-model.module;[
<!ENTITY % $Info->{ID}-model.decl
      'SYSTEM "$Info->{ID}-model.mod"'>
<!ENTITY % $Info->{ID}-model.mod %$Info->{ID}-model.decl;>
%$Info->{ID}-model.mod;]]>

EOH
  
  $s = dtd_driver_module_sets (\@module_set, $Info)
     . $s{QNameModule}.$s{DatatypeModule}.$s{NotationModule}.$s{AttributeModule}
     . $s{ModelModule}
     .$s;
  make_dtd ($src, $Info, $src->get_attribute_value ('ID'), $s);
}

sub dtd_driver_module_sets ($$) {
  my ($srces, $Info) = @_;
  my @src = map {{src => $_}} @$srces;
  my $s = qq(<!-- Switchers to include/ignore each vocabulary -->\n);
  for my $module_set (@src) {
    $module_set->{ID} = $module_set->{src}->get_attribute_value ('ID') || 'XHTML';
    $s .= qq(<!ENTITY % $module_set->{ID}.module "@{[$module_set->{src}->get_attribute_value ('Default') > 0 ? 'INCLUDE' : 'IGNORE']}">\n);
  }
  $s .= qq(\n<!-- Namespace names -->\n);
  for my $module_set (@src) {
    $module_set->{ns} = $module_set->{src}->get_attribute ('Namespace');
    $s .= qq(<!ENTITY % $module_set->{ID}.xmlns "@{[$module_set->{ns}->get_attribute_value ('Name')]}">\n);
  }
  $s .= qq(\n<!-- Base URIs for the relavant DTD modules -->\n);
  for my $module_set (@src) {
    $s .= qq(<!ENTITY % $module_set->{ID}.sysid.base "@{[$module_set->{src}->get_attribute_value ('BaseURI')]}">\n);
  }
  $s .= qq(\n<!-- Namespace prefix -->\n);
  $s .= qq(<!ENTITY % NS.prefixed "@{[$Info->{ns}->get_attribute_value ('UsePrefix') > 0 ? 'INCLUDE' : 'IGNORE']}">\n);
  for my $module_set (@src) {
    $s .= qq(<!ENTITY % $module_set->{ID}.prefix "@{[$module_set->{ns}->get_attribute_value ('DefaultPrefix')]}">\n);
    $s .= qq(<!ENTITY % $module_set->{ID}.prefixed "@{[$module_set->{ns}->get_attribute_value ('UsePrefix') > 0 ? 'INCLUDE' : $module_set->{ns}->get_attribute_value ('UsePrefix') < 0 ? 'IGNORE' : '%NS.prefixed;']}">\n);
  }
  $s .= qq(\n<!-- a URI reference -->\n<!ENTITY % URI.datatype "CDATA">\n);
  $s .= qq(\n<!-- Placefolders for foreign namespace declarations -->\n);
  for my $module_set (@src) {
    $s .= qq(<!ENTITY % $module_set->{ID}.xmlns.extra.attrib "">\n);
  }
  $s .= qq(\n<!-- Namespace declarations -->\n);
  for my $module_set (@src) {
    $s .= qq(<![%$module_set->{ID}.module;[
<![%$module_set->{ID}.prefixed;[
<!ENTITY % $module_set->{ID}.xmlns.decl.attrib
	"xmlns:%$module_set->{ID}.prefix;	%URI.datatype;	#FIXED '%$module_set->{ID}.xmlns;'">
]]>
<!ENTITY % $module_set->{ID}.xmlns.decl.attrib
	"xmlns	%URI.datatype;	#FIXED '%$module_set->{ID}.xmlns;'">
]]>
<!ENTITY % $module_set->{ID}.xmlns.decl.attrib "">\n\n);
  }
  $s .= <<EOH;
<!-- Declare a parameter entity %XSI.prefix as a prefix to use for
     XML Schema Instance attributes. -->
<!ENTITY % XSI.prefix "xsi">

<!ENTITY % XSI.pfx "%XSI.prefix;:">

<!ENTITY % XSI.xmlns "http://www.w3.org/2001/XMLSchema-instance">

<!-- Declare a parameter entity %XSI.xmlns.attrib as support for
     the schemaLocation attribute. -->
<!ENTITY % XSI.xmlns.attrib
	"xmlns:%XSI.prefix;	%URI.datatype;	#FIXED '%XSI.xmlns;'">
EOH
  $s .= qq(\n<!ENTITY % NS.decl.attrib
	").join ("\n\t", (map {qq(%$_->{ID}.xmlns.decl.attrib;)} @src),
	                 map {qq(%$_->{ID}.xmlns.extra.attrib;)} @src)
	  .qq(\n\t%XSI.xmlns.attrib;">\n);
  $s .= qq(\n);
  for my $module_set (@src) {
    $s .= qq(<!ENTITY % $module_set->{ID}.xmlns.attrib "%NS.decl.attrib;">\n);
  }
  $s .= qq(\n\n);
  $s;
}

sub dtd_driver_load_module ($$) {
  my ($src, $Info) = @_;
  my $module_name = name_of ($src, $Info, key => 'ID');
  my $module_hyphen_name = name_of ($src, $Info, key => 'ID', delim => '-');
  my $module_set_name = set_name_of ($src, $Info, key => 'ID');
  my $module_id = local_name_of ($src, $Info, key => 'ID');
  
  my $s .= <<EOH;
@{[description ($src, $Info, context => 'load_module', id => $src->local_name)]}<![%$module_set_name.module;[
<!ENTITY % $module_name.module "@{[$src->get_attribute_value ('Default') >= 0 ? 'INCLUDE' : 'IGNORE']}">
<![%$module_name.module;[
@{[submodule_declarations ($src, $Info)]}<!ENTITY % $module_name.decl
	@{[paralit external_id_of ($src, $Info, default => qq($module_hyphen_name.mod), base => qq(%$module_set_name.sysid.base;))]}>
<!ENTITY % $module_name.mod %$module_name.decl;>
%$module_name.mod;]]>
]]>

EOH
  $s;
}

sub dtd_driver_load_dtd ($$) {
  my ($src, $Info) = @_;
  my $module_set_name = $src->get_attribute_value ('ID');
  
  my $s .= <<EOH;
@{[description ($src, $Info)]}<![%$module_set_name.module;[
@{[submodule_declarations ($src, $Info)]}<!ENTITY % $module_set_name.dtd.sysid "@{[system_id_of ($src, $Info, default => $src->get_attribute_value ('ID').'.dtd', base => qq(%$module_set_name.sysid.base;))]}">
@{[do{
  my $pubid = $src->get_attribute_value ('PUBLIC');
  if ($pubid) {
    qq(<!ENTITY % $module_set_name.dtd.fpi "$pubid">\n<!ENTITY % $module_set_name.dtd.fpi.defined "INCLUDE">\n);
  } else {
    qq(<!ENTITY % $module_set_name.dtd.fpi "">\n<!ENTITY % $module_set_name.dtd.fpi.defined "IGNORE">\n);
  }
}]}
<![%$module_set_name.dtd.fpi.defined;[
<!ENTITY % $module_set_name.dtd.decl
	'PUBLIC "%$module_set_name.dtd.fpi;"
	       "%$module_set_name.dtd.sysid;"'>
]]>
<!ENTITY % $module_set_name.dtd.decl
	'SYSTEM "%$module_set_name.dtd.sysid;"'>
<!ENTITY % $module_set_name.dtd %$module_set_name.dtd.decl;>
%$module_set_name.dtd;]]>

EOH
  $s;
}

sub model_module ($$) {
  my ($src, $Info) = @_;
    my $s = '';
    for my $src (@{$src->child_nodes}) {
      if ($src->local_name eq 'Class') {
        $s .= qq(@{[description ($src, $Info)]}<!ENTITY % @{[class_name_of ($src, $Info)]} @{[paralit convert_content_model ($src, $Info)]}>\n\n);
      } elsif ($src->local_name eq 'Content') {
        $s .= element_content_def ($src, $Info);
      }
    }
  make_module ($src, $Info, submodule_id_of ($src, $Info, default => 'model'), $s);
}

sub datatype_module ($$) {
  my ($src, $Info) = @_;
    my $s = '';
    for my $src (@{$src->child_nodes}) {
      if ($src->local_name eq 'Type') {
        $s .= qq(@{[get_desc ($src, $Info)]}<!ENTITY % @{[name_of ($src, $Info)]}.datatype "@{[xml_datatype_of ($src, $Info, default => 'CDATA')]}">\n\n);
      }
    }
  make_module ($src, $Info, submodule_id_of ($src, $Info, default => 'datatype'), $s);
}

sub notation_module ($$) {
  my ($src, $Info) = @_;
  my $s = '';
  for my $src (@{$src->child_nodes}) {
    if ($src->local_name eq 'Notation') {
      $s .= qq(@{[get_desc ($src, $Info)]}<!NOTATION @{[name_of ($src, $Info)]} @{[external_id_of ($src, $Info)]}>\n\n);
    }
  }
  make_module ($src, $Info, submodule_id_of ($src, $Info, default => 'notation'), $s);
}

sub qname_module ($$) {
  my ($src, $Info) = @_;
  my $ID = $Info->{ID};
  my $ns = $src->get_attribute ('Namespace');
  my $s = <<EOH;
<!ENTITY % sgml.tag.minimizable "IGNORE">

<!ENTITY % NS.prefixed "@{[$ns->get_attribute_value ('UsePrefix')==1?
                            q(INCLUDE):q(IGNORE)]}">

<!-- Section A: XML Namespace Framework :::::::::::::::::::::::::: -->

<!-- 1. Declare a %$ID.prefixed; conditional section keyword, used
        to activate namespace prefixing. -->
<!ENTITY % $ID.prefixed "@{[$ns->get_attribute_value ('UsePrefix')==1?
                            q(INCLUDE):
                            $ns->get_attribute_value ('UsePrefix')==-1?
                            q(IGNORE):
                            q(%NS.prefixed;)]}">

<!ENTITY % $ID.global.attrs.prefixed "@{[$ns->get_attribute_value ('UsePrefix')==1?
                            q(INCLUDE):
                            $ns->get_attribute_value ('UsePrefix')==-1?
                            q(IGNORE):
                            q(%NS.prefixed;)]}">

<!ENTITY % $ID.xsi.attrs "INCLUDE">

<!-- 2. Declare a parameter entity %$ID.xmlns; containing
        the URI reference used to identity the namespace. -->
<!ENTITY % $ID.xmlns "@{[$ns->get_attribute_value ('Name')]}">

<!-- 3. Declare parameter entity %$ID.prefix; containing
        the default namespace prefix string to use when prefixing
        is enabled. This may be overridden in the DTD driver or the
        internal subset of a document instance.
        
        NOTE: As specified in XML Namespace speficications, the namespace
        prefix serves as a proxy for the URI reference, and is not in itself
        significant. -->
<!ENTITY % $ID.prefix "@{[$ns->get_attribute_value ('DefaultPrefix')]}">

<!-- 4. Declare parameter entity %$ID.pfx; containing the
        colonized prefix (e.g, '%$ID.prefix;:') used when
        prefixing is active, an empty string when it is not. -->
<![%$ID.prefixed;[
<!ENTITY % $ID.pfx "%$ID.prefix;:">
]]>
<!ENTITY % $ID.pfx "">

<!-- declare qualified name extensions here ............ -->
<!ENTITY % ${ID}-qname-extra.mod "">
%${ID}-qname-extra.mod;

<!-- 5. The parameter entity %$ID.xmlns.extra.attrib; may be
        redeclared to contain any foreign namespace declaration
        attributes for namespaces embedded.  The default
        is an empty string. -->
<!ENTITY % $ID.xmlns.extra.attrib "">

<!-- The parameter entity %URI.datatype; should already be defined in
     Datatype module. -->
<!ENTITY % URI.datatype "CDATA">

<![%$ID.prefixed;[
<!ENTITY % $ID.xmlns.decl.attrib
	"xmlns:%$ID.prefix;	%URI.datatype;	#FIXED '%$ID.xmlns;'">
]]>
<!ENTITY % $ID.xmlns.decl.attrib
	"xmlns	%URI.datatype;	#FIXED '%$ID.xmlns;'">

<!-- Declare a parameter entity %XSI.prefix as a prefix to use for
     XML Schema Instance attributes. -->
<!ENTITY % XSI.prefix "xsi">

<!ENTITY % XSI.pfx "%XSI.prefix;:">

<!ENTITY % XSI.xmlns "http://www.w3.org/2001/XMLSchema-instance">

<!-- Declare a parameter entity %XSI.xmlns.attrib as support for
     the schemaLocation attribute. -->
<!ENTITY % XSI.xmlns.attrib
	"xmlns:%XSI.prefix;	%URI.datatype;	#FIXED '%XSI.xmlns;'">

<![%$ID.prefixed;[
<!ENTITY % NS.decl.attrib
	"%$ID.xmlns.decl.attrib;
	%$ID.xmlns.extra.attrib;
	%XSI.xmlns.attrib;">
]]>
<!ENTITY % NS.decl.attrib
	"%$ID.xmlns.extra.attrib;
	%XSI.xmlns.attrib;">

<!-- Declare a parameter entity containing all XML namespace declaration
     attributes used, including a default xmlns declaration when prefixing
     is inactive. -->
<![%$ID.prefixed;[
<!ENTITY % $ID.xmlns.attrib
	"%NS.decl.attrib;">
]]>
<!ENTITY % $ID.xmlns.attrib
	"%$ID.xmlns.decl.attrib;
	%NS.decl.attrib;">

<!-- @{[dot_padding qq(Section B: $Info->{realname} Qualified Names ),
               length => 71-9, dot => q(:)]} -->

<!-- placeholder for qualified name redeclarations -->
<!ENTITY % ${ID}-qname.redecl "">
%${ID}-qname.redecl;

<!-- 6. This section declare parameter entities used to provide
        namespace-qualified names for all element types and global
        attribute names. -->
EOH
  for my $lname (sort keys %{$Info->{QName}}) {
    $s .= qq(<!ENTITY % )
       .  (dot_padding qq($Info->{ID}.$lname.qname),
                       length => 15 + length ($Info->{ID}), dot => ' ')
       .  qq( "%$Info->{ID}.pfx;$lname">\n);
  }
  $s .= qq(\n);
  for my $lname (sort keys %{$Info->{QNameA}}) {
    $s .= qq(<!ENTITY % )
       .  (dot_padding qq($Info->{ID}.$lname.attrib.qname),
                       length => 15 + length ($Info->{ID}), dot => ' ')
       .  qq( "%$Info->{ID}.prefix;:$lname">\n);
  }
  $s .= qq(\n);
  for my $lname (sort keys %{$Info->{QNameB}}) {
    $s .= qq(<!ENTITY % )
       .  (dot_padding qq($Info->{ID}.$lname.attribute.qname),
                       length => 15 + length ($Info->{ID}), dot => ' ')
       .  qq( "%$Info->{ID}.pfx;$lname">\n);
  }
  make_module ($src->get_attribute ('QName', make_new_node => 1), $Info, 'qname', $s);
}

sub get_name ($$;$) {
  my ($src, $Info, $key) = @_;
  my $name = $src->get_attribute_value ($key || 'Name');
      if ($name =~ /^:(.+)/) {
        $name = $1;
      } elsif ($name =~ /([^:]+):(.+)/) {
        $name = qq($1.$2);
      } else {
        $name = qq($Info->{ID}.$name);
      }
  $name;
}

sub get_qname ($$) {
  my ($src, $Info) = @_;
  my $name = $src->get_attribute_value ('Name');
      if ($name =~ /"([^"]+)"/) {
        $name = qq($1);
      } elsif ($name =~ /^:(.+)/) {
        $name = qq(%$1.qname;);
      } elsif ($name =~ /([^:]+):(.+)/) {
        $name = qq(%$1.$2.qname;);
      } elsif ($name =~ /\{([^{}]+)\}/) {
        $Info->{QNameB}->{$1} = 1;
        $name = qq(%$Info->{ID}.$1.attribute.qname;);
      } else {
        $Info->{QNameA}->{$name} = 1;
        $name = qq(%$Info->{ID}.$name.attrib.qname;);
      }
  $name;
}

sub get_atype ($$) {
  my ($src, $Info) = @_;
  my $name = $src->get_attribute_value ('Type');
      if ($name =~ /^:(.+)/) {
        $name = qq(%$1.datatype;);
      } elsif ($name =~ /([^:]+):(.+)/) {
        $name = qq(%$1.$2.datatype;);
      } elsif ($name =~ /"([^"]+)"/) {
        $name = qq($1);
      } else {
        $name = qq(%$Info->{ID}.$name.datatype;);
      }
  $name;
}

sub get_adefault ($$) {
  my ($src, $Info) = @_;
  my $name = $src->get_attribute_value ('Default');
      if (defined $name) {
      } else {
        $name = qq(#IMPLIED);
      }
  $name;
}

sub get_desc ($$;%) {
  my ($src, $Info, %opt) = @_;
  my $desc = $src->get_attribute_value ('Description');
  $desc =~ s/--/- - /g;
  $desc =~ s/\n/\n     /g;
  if (length $desc) {
    $desc = qq($opt{prefix}$desc);
    $desc .= q( ) if $opt{padding_length};
    $desc = q(<!-- ).(dot_padding $desc, length => $opt{padding_length},
                                         dot => $opt{padding_dot}).qq( -->\n);
  } elsif (length $opt{default}) {
    $desc = $opt{default};
    $desc .= q( ) if $opt{padding_length};
    $desc = q(<!-- ).(dot_padding $desc, length => $opt{padding_length},
                                         dot => $opt{padding_dot}).qq( -->\n);
  }
  $desc;
}

sub attset_def ($$) {
  my ($src, $Info) = @_;
  my $name = get_name ($src, $Info);
  my $s .= qq(@{[get_desc ($src, $Info)]}<!ENTITY % $name.attrib\n\t);
      my @s;
      if ($name eq qq($Info->{ID}.common)) {
        push @s, qq(%$Info->{ID}.common.extra.attrib;);
        push @s, qq(%$Info->{ID}.xmlns.attrib;);
      }
      for my $src (@{$src->child_nodes}) {
        ## Attribute Definition
        if ($src->local_name eq 'Attribute') {
          push @s, attrib_def ($src, $Info);
        ## Reference to Attribute Definition
        } elsif ($src->local_name eq 'ref') {
          push @s, attrib_ref ($src, $Info);
        } elsif ($src->local_name eq 'REF') {
          push @s, attrib_REF ($src, $Info);
        }
      }
      $s .= paralit join "\n\t", @s;
      $s .= qq(>\n\n);
  $s;
}

sub attrib_module ($$) {
  my ($src, $Info) = @_;
  my $s = <<EOH;
<!ENTITY % $Info->{ID}.common.extra.attrib "">

EOH
  my $output_common = 0;
  for my $src (@{$src->child_nodes}) {
    ## Attributes Set
    if ($src->local_name eq 'Attribute' or $src->local_name eq 'AttributeSet') {
      $s .= attset_def ($src, $Info);
      $output_common = 1 if get_name ($src, $Info) eq qq($Info->{ID}.common);
    }
  }
  unless ($output_common) {
    $s .= <<EOH;
<!ENTITY % $Info->{ID}.common.attrib
	"%$Info->{ID}.common.extra.attrib;
	%$Info->{ID}.xmlns.attrib;">

EOH
  }
  make_module ($src, $Info, ($src->get_attribute_value ('ID') || 'attribs'), $s);
}

sub attrib_def ($$) {
  my ($src, $Info) = @_;
  my $s = qq(@{[get_qname ($src, $Info)]}	@{[get_atype ($src, $Info)]}	@{[get_adefault ($src, $Info)]});
  $s;
}

sub attrib_ref ($$) {
  my ($src, $Info) = @_;
  my $name = $src->value;
      if ($name =~ /^:(.+)/) {
        $name = $1;
      } elsif ($name =~ /([^:]+):(.+)/) {
        $name = qq($1.$2);
      } else {
        $name = qq($Info->{ID}.$name);
      }
  qq(%$name.attrib;);
}

sub attrib_REF ($$) {
  my ($src, $Info) = @_;
  {
    'xml:base'	=> q<xml:base	%URI.datatype;	#IMPLIED>,
    'xml:lang'	=> q<xml:lang	%LanguageCode.datatype;	#IMPLIED>,
    'xml:space'	=> q<xml:space	(default|preserve)	#IMPLIED>,
    'xsi:nil'	=> q<%XSI.prefix;:nil (true|false|1|0) #IMPLIED>,
    'xsi:noNamespaceSchemaLocation'	=> q<%XSI.prefix;:noNamespaceSchemaLocation CDATA #IMPLIED>,
    'xsi:schemaLocation'	=> q<%XSI.prefix;:schemaLocation CDATA #IMPLIED>,
    'xsi:type'	=> q<%XSI.prefix;:type NMTOKEN #IMPLIED>,
  }->{$src->value};
}

sub submodule ($$) {
  my ($src, $Info) = @_;
  local $Info->{elements} = [];
  my $s = submodule_declarations ($src, $Info);
  make_module ($src, $Info, $src->get_attribute_value ('ID'), $s);
}

sub submodule_declarations ($$) {
  my ($src, $Info) = @_;
  my $s = '';
  for my $src (@{$src->child_nodes}) {
    if ($src->local_name eq 'Element') {
      $s .= element_def ($src, $Info);
    } elsif ($src->local_name eq 'Attribute') {
      $s .= attlist_def ($src, $Info);
    } elsif ($src->local_name eq 'AttributeSet') {
      $s .= attset_def ($src, $Info);
    } elsif ($src->local_name eq 'Class') {
      $s .= qq(@{[description ($src, $Info)]}<!ENTITY % @{[class_name_of ($src, $Info)]} @{[paralit convert_content_model ($src, $Info)]}>\n\n);
    } elsif ($src->local_name eq 'Content') {
      $s .= element_content_def ($src, $Info);
    } elsif ($src->local_name eq 'IfModuleSet') {
      my $ms = name_of $src, $Info, key => $src->get_attribute_value ('ID') ?
                                             'ID' : 'ModuleSet';
      $s .= qq(<![%$ms.module;[\n);
      $s .= submodule_declarations ($src, $Info);
      $s .= qq(<!-- end of $ms -->]]>\n\n);

    } elsif ($src->local_name eq 'IfModule') {
      my $ms = name_of $src, $Info, key => 'ID';
      $s .= qq(<![%$ms.module;[\n);
      $s .= submodule_declarations ($src, $Info);
      $s .= qq(<!-- end of $ms -->]]>\n\n);
    } elsif ($src->local_name eq 'ElementSwitch') {
      $s .= qq(<!ENTITY % @{[name_of ($src, $Info)]}.element "@{[$src->get_attribute_value ('Use')>0?'INCLUDE':'IGNORE']}">\n);
    } elsif ($src->local_name eq 'AttributeSwitch') {
      $s .= qq(<!ENTITY % @{[name_of ($src, $Info)]}.attlist "@{[$src->get_attribute_value ('Use')>0?'INCLUDE':'IGNORE']}">\n);
    } elsif ($src->local_name eq 'ModuleSwitch') {
      $s .= qq(<!ENTITY % @{[name_of ($src, $Info)]}.module "@{[$src->get_attribute_value ('Use')>0?'INCLUDE':'IGNORE']}">\n);
    } elsif ($src->local_name eq 'Switch') {
      $s .= qq(<!ENTITY % @{[name_of ($src, $Info)]} "@{[$src->get_attribute_value ('Use')>0?'INCLUDE':'IGNORE']}">\n);
    } elsif ($src->local_name eq 'GeneralEntity') {
      $s .= entity_declaration ($src, $Info, param => 0);
    } elsif ($src->local_name eq 'ParameterEntity') {
      $s .= parameter_entity_declaration ($src, $Info);
    } elsif ($src->local_name eq 'Module') {
      $s .= dtd_driver_load_module ($src, $Info);
    } elsif ($src->local_name eq 'DTD') {
      $s .= dtd_driver_load_dtd ($src, $Info);
    }
  }
  $s;
}

sub element_content_def ($$) {
  my ($src, $Info) = @_;
  qq(<!ENTITY % @{[name_of ($src, $Info, key => 'ElementType')]}.content @{[paralit convert_content_model ($src, $Info, default => 'EMPTY')]}>\n);
}

sub element_def ($$) {
  my ($src, $Info) = @_;
  my $name = get_name ($src, $Info);
  my $mname = $name =~ /^\Q$Info->{ID}.\E/ ? $name : qq($Info->{ID}.$name);
  my $short_name = $name;
  if ($name =~ /^\Q$Info->{ID}\E\.(.+)/) {
    $Info->{QName}->{$1} = 1;
    push @{$Info->{elements}}, $1;
    $short_name = $1;
  }
  my $s = get_desc $src, $Info, prefix => qq($short_name: ),
                   padding_length => 51, padding_dot => q(.),
                   default => qq($short_name);
  $s .= "\n";
  $s .= xml_parameter_ENTITY qq($mname.element), value => 'INCLUDE';
  my $cm = convert_content_model ($src, $Info, default => 'EMPTY');
  $s .= xml_condition_section (qq($mname.element) =>
            xml_parameter_ENTITY (qq($name.content), value => $cm)
          . xml_parameter_ENTITY (qq($name.qname), value => $short_name)
          . xml_parameter_ENTITY (qq($name.tagmin.start), value => q<->)
          . xml_parameter_ENTITY (qq($name.tagmin.end), value => $cm eq 'EMPTY' ? q<o> : q<->)
          . xml_condition_section (qq(sgml.tag.minimizable) =>
              xml_parameter_ENTITY (qq($name.tagmin),
                                    value => qq"%$name.tagmin.start; %$name.tagmin.end;"))
          . xml_parameter_ENTITY (qq($name.tagmin), value => q"")
          . qq(<!ELEMENT %$name.qname; %$name.tagmin; %$name.content;>\n));
  $s .= "\n";
  $s .= attlist_def (scalar $src->get_attribute ('Attribute', make_new_node => 1), $Info, $mname);
  $s;
}

sub get_model_token ($$) {
  my ($name, $Info) = @_;
  my $suffix = '.qname';
  if ($name =~ s/^\$//) {
    $suffix = $name =~ /\.(?:mix|class|content|datatype)$/ ? '' : '.class';
  }
      if ($name =~ /^:(.+)/) {
        $name = qq(%$1$suffix;);
      } elsif ($name =~ /([^:]+):(.+)/) {
        $name = qq(%$1.$2$suffix;);
      } elsif ($name =~ /"([^"]+)"/) {
        $name = qq($1);
      } else {
        $name = qq(%$Info->{ID}.$name$suffix;);
      }
  $name;
}

sub attlist_def ($$;$) {
  my ($src, $Info, $name) = @_;
  $name ||= get_name ($src, $Info, 'ElementType');
  my $mname = get_name ($src, $Info);
  $mname = ($name =~ /^\Q$Info->{ID}.\E/ ? $name : qq($Info->{ID}.$name))
    if $mname eq "$Info->{ID}.";
  $Info->{QName}->{$1} = 1 if $name =~ /^\Q$Info->{ID}\E\.(.+)/;
  my $s = qq(<!ATTLIST %$name.qname;);
  for my $src (@{$src->child_nodes}) {
    ## Attribute Definition
    if ($src->local_name eq 'Attribute') {
      $s .= "\n\t". attrib_def ($src, $Info);
    ## Reference to Attribute Definition
    } elsif ($src->local_name eq 'ref') {
      $s .= "\n\t". attrib_ref ($src, $Info);
    } elsif ($src->local_name eq 'REF') {
      $s .= "\n\t". attrib_REF ($src, $Info);
    }
  }
  if ($_[2]) {
    $s .= qq(\n\t%$Info->{ID}.common.attrib;);
  }
  $s .= qq(>\n);
    qq(@{[description ($src, $Info)]}<!ENTITY % $mname.attlist "INCLUDE">\n)
  . xml_condition_section (qq($mname.attlist) => $s)
  . "\n";
}

sub make_module ($$$$;%) {
  my ($src, $Info, $id, $s, %opt) = @_;
  my $name = $src->get_attribute_value ('Name')
          || {arch     => q/Base Architecture/,
              attribs  => q/Common Attributes/,
              blkphras => q/Block Phrasal/,
              blkpres  => q/Block Presentation/,
              blkstruct => q/Block Structural/,
              charent  => q/Character Entities/,
              datatype => q/Datatypes/,
              framework => q/Modular Framework/,
              inlphras => q/Inline Phrasal/,
              inlpres  => q/Inline Presentation/,
              inlstruct => q/Inline Structural/,
              legacy   => q/Legacy Markup/,
              list     => q/Lists/,
              meta     => q/Metainformation/,
              model    => q/Document Model/,
              notations => q/Notations/,
              pres     => q/Presentation/,
              qname    => q/QName (Qualified Name)/,
              struct   => q/Document Structure/,
              text     => q/Text/,
             }->{$id}
          || $id;
  return unless $s;
  
  my $r = <<EOH;
<!-- ...................................................................... -->
<!-- @{[do{
       my $s = qq($Info->{Name} $name Module );
       if (70 - length $s > 0) {
         $s = dot_padding $s, length => 70, dot => q(.);
       } else {
         $s = qq(        $name Module );
         $s = qq($Info->{Name}\n     ) . dot_padding $s, length => 70, dot => q(.);
       }
       $s;
     }]} -->
<!-- file: $Info->{ID}-$id.mod
     
@{[make_paragraphs [$Info->{Description}], indent => q<     >]}
     
     Copyright @{[(gmtime)[5]+1900]} $Info->{Copyright}, All Rights Reserved.
     
     Permission to use, copy, modify and distribute this DTD and its
     accompanying documentation for any purpose and without fee is hereby
     granted in perpetuity, provided that the above copyright notice and
     this paragraph appear in all copies.  The copyright holders make no
     representation about the suitability of the DTD for any purpose.
     
     It is provided "as is" without expressed or implied warranty.
     
     Revision: @{[sprintf '%04d-%02d-%02dT%02d:%02d:%02d+00:00',
                          (gmtime)[5]+1900, (gmtime)[4]+1, (gmtime)[3,2,1,0]
               ]} (Generated by $SCRIPT_NAME/$VERSION)
     
     This DTD module is identified by the SYSTEM identifier:
     
       SYSTEM "$Info->{BaseURI}$Info->{ID}-$id.mod"
     
     ...................................................................... -->

EOH
  ## TODO: Support PUBLIC identifier.
  
  ## Module description
  my @para = ({
              arch     => (join "\n",
                q!This optional module includes declarations that enable to be used!,
                q!as a base architecture according to the 'Architectural Forms Definition!,
                q!Requirements' (Annex A.3, ISO/IEC 10744, 2nd edition). For more!,
                q!information on use of architectural forms, see the HyTime web site at!,
                q!<http://www.hytime.org/>.!),
              attribs  => q/This module declares many of the common attributes./,
              blkphras => qq/This module declares the element types and their attributes used\n/.
                          q/to support block-level phrasal markup./,
              blkpres  => qq/This module declares the element types and their attributes used\n/.
                          q/to support block-level presentational markup./,
              blkstruct => qq/This module declares the element types and their attributes used\n/.
                          q/to support block-level structural markup./,
              charent  => q/This module declares the set of character entities./,
              datatype => q/This module defines containers for the datatypes./,
              framework => qq/This module imstantiates the modules needed to support\n/.
                           q/the modularization model./,
              inlphras => qq/This module declares the element types and their attributes used\n/.
                          q/to support inline phrasal markup./,
              inlpres  => qq/This module declares the element types and their attributes used\n/.
                          q/to support inline presentational markup./,
              inlstruct => qq/This module declares the element types and their attributes used\n/.
                          q/to support inline structural markup./,
              legacy   => q/This module declares additional markup that is considered obsolete./,
              list     => qq/This module declares the list-oriented element types\n/.
                          q/and their attributes./,
              meta     => qq/This module declares the element types and their attributes\n/.
                          q/to support metainformation markup./,
              model    => qq/This model describes the groupings of element types that\n/.
                          q/make up common content models./,
              pres     => qq/This module declares the element types and their attributes used\n/.
                          q/to support presentational markup./,
              qname    => (join "\n",
                q!This module is contained in two parts, labeled Section 'A' and 'B':!,
                q!!,
                q!  Section A declares parameter entities to support namespace-qualified!,
                q!  names, namespace declarations, and name prefixing.!,
                q!!,
                q!  Section B declares parameter entities used to provide namespace-qualified!,
                q!  names for all element types and global attribute names.!),
              struct   => qq/This module defines the major structural element types and\n/.
                          q/their attributes./,
              }->{$id}, $src->get_attribute_value ('Description'));
  unshift @para, '  '.join ', ', sort @{$Info->{elements}||[]} if @{$Info->{elements}||[]};
  if (@para) {
    $name = qq($Info->{realname} QName (Qualified Name) Module)
      if $id eq 'qname';
    $r .= <<EOH;
<!-- $name

@{[make_paragraphs \@para, indent => '     ']}
-->

EOH
  }
  
  $r .= $s;
  
  $r .= qq(\n<!-- end of $Info->{ID}-$id.mod -->\n);
  
  my $file = qq"$Info->{ID}-$id.mod";
  open FILE, '>', $file or die "$0: $file: $!";
    print FILE $r;
  close FILE;
  print STDERR "$0: $file created\n";
}

sub make_dtd ($$$$) {
  my ($src, $Info, $id, $s) = @_;
  $id = "-$id" if $id;
  
  my $r = <<EOH;
<!-- ....................................................................... -->
<!-- @{[do{
       my $s = qq($Info->{Name} DTD );
       if (70 - length $s > 0) {
         $s = dot_padding $s, length => 70, dot => q(.);
       } else {
         $s = qq(        $Info->{Version} DTD );
         $s = qq($Info->{realname}\n     ) . dot_padding $s, length => 70, dot => q(.);
       }
       $s;
     }]} -->
<!-- file: $Info->{ID}.dtd
-->

<!-- $Info->{Name} DTD

@{[make_paragraphs [$Info->{Description}], indent => q<     >]}

     Copyright @{[(gmtime)[5]+1900]} $Info->{Copyright}, All Rights Reserved.

     Permission to use, copy, modify and distribute this DTD and its
     accompanying documentation for any purpose and without fee is hereby
     granted in perpetuity, provided that the above copyright notice and
     this paragraph appear in all copies.  The copyright holders make no
     representation about the suitability of the DTD for any purpose.

     It is provided "as is" without expressed or implied warranty.

       Revision: @{[sprintf '%04d-%02d-%02dT%02d:%02d:%02d+00:00',
                            (gmtime)[5]+1900, (gmtime)[4]+1, (gmtime)[3,2,1,0]]}

-->
<!-- This is the driver file for the $Info->{Name} DTD.

     This DTD is identified by the SYSTEM identifier:

     SYSTEM "$Info->{BaseURI}$Info->{ID}$id.dtd"
-->

EOH
  
  $r .= $s;
  
  $r .= qq(\n<!-- end of $Info->{ID}$id.dtd -->\n);
  
  my $file = qq"$Info->{ID}$id.dtd";
  open FILE, '>', $file or die "$0: $file: $!";
    print FILE $r;
  close FILE;
  print STDERR "$0: $file created\n";
}

__END__

=head1 NAME

mkdtds.pl - Modularized XML Document Type Definition (DTD) Generator

=head1 DESCRIPTION

This script generates XML DTD module implementations and/or DTD
drivers, that can be used with modularized XHTML DTDs.

There is no plan to extend or even maintain this script anymore; the
modularization framework of XHTML has been dead.  Futhermore, XML DTDs
are no longer useful for any practical purpose.

=head1 USAGE

  $ perl mkdtds.pl driver.dds
  mkdtds.pl: driver.dtd created
  mkdtds.pl: driver-model.mod created

  $ perl mkdtds.pl moduleset.dms
  mkdtds.pl: moduleset-datatype.mod created
  mkdtds.pl: moduleset-attrib.mod created
  mkdtds.pl: moduleset-module1.mod created

=head1 DTD SOURCE FORMAT

(((Example source files are available from
<http://suika.fam.cx/www/markup/>)))

=head1 REQUIRED MODULES

This script requires Perl modules
L<Message::Markup::SuikaWikiConfig20::Node> and
L<Message::Markup::SuikaWikiConfig20::Parser>, which are put into the
C<lib> directory.  These modules are originally part of the
manakai-core package.  Plese consult
<http://suika.fam.cx/www/manakai-core/doc/web/> for more information
on manakai.

=head1 AUTHOR

Wakaba <w@suika.fam.cx>

=head1 LICENSE

Copyright 2003-2004 Wakaba <w@suika.fam.cx>

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

Note that author claims no copyright with regard to DTD
modules/drivers generated by this script.  Author(s) of DTD
modules/drivers should explicily state their license terms in them and
their documentation (if any).

=cut
