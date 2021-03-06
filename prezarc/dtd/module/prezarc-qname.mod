<!-- ...................................................................... -->
<!-- PrezArk Vocabulary QName (Qualified Name) Module ..................... -->
<!-- file: prezarc-qname.mod
     
     PrezArk markup vocabulary, as described in <http://www.justsystem.co.jp/ark/genba/06.html>.
     
     Copyright 2010 Wakaba <w@suika.fam.cx>, All Rights Reserved.
     
     Permission to use, copy, modify and distribute this DTD and its
     accompanying documentation for any purpose and without fee is hereby
     granted in perpetuity, provided that the above copyright notice and
     this paragraph appear in all copies.  The copyright holders make no
     representation about the suitability of the DTD for any purpose.
     
     It is provided "as is" without expressed or implied warranty.
     
     Revision: 2010-06-20T04:53:58+00:00 (Generated by mkdtds/1.7)
     
     This DTD module is identified by the SYSTEM identifier:
     
       SYSTEM "data:,prezarc/prezarc-qname.mod"
     
     ...................................................................... -->

<!-- PrezArk Vocabulary QName (Qualified Name) Module

     This module is contained in two parts, labeled Section 'A' and 'B':
     
       Section A declares parameter entities to support namespace-qualified
       names, namespace declarations, and name prefixing.
     
       Section B declares parameter entities used to provide namespace-qualified
       names for all element types and global attribute names.
-->

<!ENTITY % sgml.tag.minimizable "IGNORE">

<!ENTITY % NS.prefixed "INCLUDE">

<!-- Section A: XML Namespace Framework :::::::::::::::::::::::::: -->

<!-- 1. Declare a %prezarc.prefixed; conditional section keyword, used
        to activate namespace prefixing. -->
<!ENTITY % prezarc.prefixed "INCLUDE">

<!ENTITY % prezarc.global.attrs.prefixed "INCLUDE">

<!ENTITY % prezarc.xsi.attrs "INCLUDE">

<!-- 2. Declare a parameter entity %prezarc.xmlns; containing
        the URI reference used to identity the namespace. -->
<!ENTITY % prezarc.xmlns "http://www.justsystem.co.jp/ark/xmlns/prezark/">

<!-- 3. Declare parameter entity %prezarc.prefix; containing
        the default namespace prefix string to use when prefixing
        is enabled. This may be overridden in the DTD driver or the
        internal subset of a document instance.
        
        NOTE: As specified in XML Namespace speficications, the namespace
        prefix serves as a proxy for the URI reference, and is not in itself
        significant. -->
<!ENTITY % prezarc.prefix "pa">

<!-- 4. Declare parameter entity %prezarc.pfx; containing the
        colonized prefix (e.g, '%prezarc.prefix;:') used when
        prefixing is active, an empty string when it is not. -->
<![%prezarc.prefixed;[
<!ENTITY % prezarc.pfx "%prezarc.prefix;:">
]]>
<!ENTITY % prezarc.pfx "">

<!-- declare qualified name extensions here ............ -->
<!ENTITY % prezarc-qname-extra.mod "">
%prezarc-qname-extra.mod;

<!-- 5. The parameter entity %prezarc.xmlns.extra.attrib; may be
        redeclared to contain any foreign namespace declaration
        attributes for namespaces embedded.  The default
        is an empty string. -->
<!ENTITY % prezarc.xmlns.extra.attrib "">

<!-- The parameter entity %URI.datatype; should already be defined in
     Datatype module. -->
<!ENTITY % URI.datatype "CDATA">

<![%prezarc.prefixed;[
<!ENTITY % prezarc.xmlns.decl.attrib
	"xmlns:%prezarc.prefix;	%URI.datatype;	#FIXED '%prezarc.xmlns;'">
]]>
<!ENTITY % prezarc.xmlns.decl.attrib
	"xmlns	%URI.datatype;	#FIXED '%prezarc.xmlns;'">

<!-- Declare a parameter entity %XSI.prefix as a prefix to use for
     XML Schema Instance attributes. -->
<!ENTITY % XSI.prefix "xsi">

<!ENTITY % XSI.pfx "%XSI.prefix;:">

<!ENTITY % XSI.xmlns "http://www.w3.org/2001/XMLSchema-instance">

<!-- Declare a parameter entity %XSI.xmlns.attrib as support for
     the schemaLocation attribute. -->
<!ENTITY % XSI.xmlns.attrib
	"xmlns:%XSI.prefix;	%URI.datatype;	#FIXED '%XSI.xmlns;'">

<![%prezarc.prefixed;[
<!ENTITY % NS.decl.attrib
	"%prezarc.xmlns.decl.attrib;
	%prezarc.xmlns.extra.attrib;
	%XSI.xmlns.attrib;">
]]>
<!ENTITY % NS.decl.attrib
	"%prezarc.xmlns.extra.attrib;
	%XSI.xmlns.attrib;">

<!-- Declare a parameter entity containing all XML namespace declaration
     attributes used, including a default xmlns declaration when prefixing
     is inactive. -->
<![%prezarc.prefixed;[
<!ENTITY % prezarc.xmlns.attrib
	"%NS.decl.attrib;">
]]>
<!ENTITY % prezarc.xmlns.attrib
	"%prezarc.xmlns.decl.attrib;
	%NS.decl.attrib;">

<!-- Section B: PrezArk Vocabulary Qualified Names :::::::::::::::: -->

<!-- placeholder for qualified name redeclarations -->
<!ENTITY % prezarc-qname.redecl "">
%prezarc-qname.redecl;

<!-- 6. This section declare parameter entities used to provide
        namespace-qualified names for all element types and global
        attribute names. -->
<!ENTITY % prezarc.item.qname     "%prezarc.pfx;item">
<!ENTITY % prezarc.permit.qname   "%prezarc.pfx;permit">
<!ENTITY % prezarc.smaster.qname  "%prezarc.pfx;smaster">
<!ENTITY % prezarc.tmaster.qname  "%prezarc.pfx;tmaster">

<!ENTITY % prezarc.category.attrib.qname "%prezarc.prefix;:category">
<!ENTITY % prezarc.content.attrib.qname "%prezarc.prefix;:content">
<!ENTITY % prezarc.data.attrib.qname "%prezarc.prefix;:data">
<!ENTITY % prezarc.effect.attrib.qname "%prezarc.prefix;:effect">
<!ENTITY % prezarc.expand.attrib.qname "%prezarc.prefix;:expand">
<!ENTITY % prezarc.frame-decoration.attrib.qname "%prezarc.prefix;:frame-decoration">
<!ENTITY % prezarc.keyword.attrib.qname "%prezarc.prefix;:keyword">
<!ENTITY % prezarc.layout.attrib.qname "%prezarc.prefix;:layout">
<!ENTITY % prezarc.permit.attrib.qname "%prezarc.prefix;:permit">
<!ENTITY % prezarc.rehearsal.attrib.qname "%prezarc.prefix;:rehearsal">
<!ENTITY % prezarc.type.attrib.qname "%prezarc.prefix;:type">
<!ENTITY % prezarc.version.attrib.qname "%prezarc.prefix;:version">


<!-- end of prezarc-qname.mod -->
