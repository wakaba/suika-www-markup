<?xml version="1.0" encoding="iso-2022-jp"?>
<!-- XML Representation of
     "Exchange format for Japanese documents with composition markup
     (JIS X 4052:2000)"
     
     Table module
     
     Copyright 2003 Wakaba <w@suika.fam.cx>.
     Revision: $Date: 2003/09/11 08:15:42 $
     
     SYSTEM "http://suika.fam.cx/gate/cvs/*checkout*/markup/jdcm/dtd/table.mod"
  -->

<!-- table -->

<!ENTITY % jdcm.align.attrib "align	($B9TF,(B|$B9TKv(B|center|$B6QEy(B)	'$B9TF,(B'">
<!ENTITY % jdcm.cellpadding.attrib "cellpadding	%jdcm.tablelength.datatype;	#IMPLIED">
<!ENTITY % jdcm.$B9T$=$m$((B.attrib "$B9T$=$m$((B	($B$3$^F,(B|$B$3$^Cf1{(B|$B$3$^Kv(B|$B9T6QEy(B)	'$B$3$^Cf1{(B'">

<!ENTITY % jdcm.td.attrib
	'%jdcm.align.attrib;
	%jdcm.cellpadding.attrib;
	height	%jdcm.tablelength.datatype;	#IMPLIED
	width	%jdcm.tablelength.datatype;	#IMPLIED
	$B9T$3$^9g@.(B	%jdcm.positiveinteger.datatype;	"1"
	%jdcm.$B9T$=$m$((B.attrib;
	$BNs$3$^9g@.(B	%jdcm.positiveinteger.datatype;	"1"
	%jdcm.subbody.attrib;'>

<!ENTITY % jdcm.th.element "INCLUDE">
<!ENTITY % jdcm.th.content "(#PCDATA|%jdcm.semiflow.mix;)*">
<![%jdcm.th.element;[
<!ELEMENT %jdcm.th.qname; %jdcm.th.content;>
]]>
<!ENTITY % jdcm.th.attlist "INCLUDE">
<![%jdcm.th.attlist;[
<!ATTLIST %jdcm.th.qname;
	%jdcm.td.attrib;>
]]>

<!ENTITY % jdcm.td.element "INCLUDE">
<!ENTITY % jdcm.td.content "(#PCDATA|%jdcm.semiflow.mix;)*">
<![%jdcm.td.element;[
<!ELEMENT %jdcm.td.qname; %jdcm.td.content;>
]]>
<!ENTITY % jdcm.td.attlist "INCLUDE">
<![%jdcm.td.attlist;[
<!ATTLIST %jdcm.td.qname;
	%jdcm.td.attrib;>
]]>

<!ENTITY % jdcm.tr.element "INCLUDE">
<![%jdcm.tr.element;[
<!ENTITY % jdcm.tr.content "(%jdcm.th.qname;|%jdcm.td.qname;)+">
<!ELEMENT %jdcm.tr.qname; %jdcm.tr.content;>
]]>
<!ENTITY % jdcm.tr.attlist "INCLUDE">
<![%jdcm.tr.attlist;[
<!ATTLIST %jdcm.tr.qname;
	%jdcm.align.attrib;
	%jdcm.cellpadding.attrib;
	%jdcm.$B9T$=$m$((B.attrib;
	%jdcm.subbody.attrib;>
]]>


<!ENTITY % jdcm.table.element "INCLUDE">
<![%jdcm.table.element;[
<!ENTITY % jdcm.table.content "(%jdcm.tr.qname;)+">
<!ELEMENT %jdcm.table.qname; %jdcm.table.content;>
]]>
<!ENTITY % jdcm.table.attlist "INCLUDE">
<![%jdcm.table.attlist;[
<!ATTLIST %jdcm.table.qname;
	border	CDATA	"$BI=$1$$(B"
	%jdcm.cellpadding.attrib;
	frame	(void|$B9TF,(B|$B9TKv(B|$B9TF,9TKv(B|$BA0(B|$B8e(B|$BA08e(B|box)	"box"
	height	%jdcm.tablelengthnozero.datatype;	#IMPLIED
	rules	($B$J$7(B|$B9T4V(B|$BNs4V(B|$B9TNs4V(B)	"$B9TNs4V(B"
	width	%jdcm.tablelengthnozero.datatype;	#IMPLIED
	%jdcm.subbody.attrib;>
<!--
	border	($BI=$1$$(B|$BCf:Y$1$$(B|$BN"$1$$(B|<borderlength>)	$BI=$1$$(B
	height : applied to vertical table
	width : applied to horizontal table -->
]]>

<!-- tabset -->

<!ENTITY % jdcm.tab.element "INCLUDE">
<![%jdcm.tab.element;[
<!ENTITY % jdcm.tab.content "EMPTY">
<!ELEMENT %jdcm.tab.qname; %jdcm.tab.content;>
]]>
<!ENTITY % jdcm.tab.attlist "INCLUDE">
<![%jdcm.tab.attlist;[
<!ATTLIST %jdcm.tab.qname;
	%jdcm.subbody.attrib;>
]]>

<!ENTITY % jdcm.tabset.element "INCLUDE">
<![%jdcm.tabset.element;[
<!ENTITY % jdcm.tabset.content "(#PCDATA|%jdcm.tab.qname;|%jdcm.ruby.qname;|%jdcm.sup.qname;|%jdcm.sub.qname;|%jdcm.em.class;|%jdcm.yoko.qname;|%jdcm.tate.qname;|%jdcm.span.qname;|%jdcm.ch.qname;|%jdcm.br.qname;)*">
<!ELEMENT %jdcm.tabset.qname; %jdcm.tabset.content;>
	<!-- br cannot be here by definition of content model table,
	     but example in [JIS X 4052:2000, 6.11] includes br as a child of tabset. -->
]]>
<!ENTITY % jdcm.tabset.attlist "INCLUDE">
<![%jdcm.tabset.attlist;[
<!ATTLIST %jdcm.tabset.qname;
	char	%jdcm.characters.datatype;	#REQUIRED
	$B%?%V0LCV(B	%jdcm.tablelengths.datatype;	#REQUIRED
	$B%?%V<o(B	CDATA	#IMPLIED
	%jdcm.subbody.attrib;>
<!-- tabType *(WSP tabType)
     tabType := ($B:8(B|$B>e(B|$B1&(B|$B2<(B|$BCf1{(B|$B;XDjJ8;z(B)
     Default : vertical : $B:8(B, horizontal : $B>e(B -->
]]>


<!-- end of table.mod -->
