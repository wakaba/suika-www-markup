<!-- ...................................................................... -->
<!-- Tree QName (Qualified Name) Module ................................... -->
<!-- file: tree-qname.mod
     
     This is a markup vocabulary for trees, as defined by 564
     <http://pc5.2ch.net/test/read.cgi/hp/1101043958/564>.
     
     Copyright 2004 Wakaba <wakaba@suikawiki.org>, All Rights Reserved.
     
     Permission to use, copy, modify and distribute this DTD and its
     accompanying documentation for any purpose and without fee is hereby
     granted in perpetuity, provided that the above copyright notice and
     this paragraph appear in all copies.  The copyright holders make no
     representation about the suitability of the DTD for any purpose.
     
     It is provided "as is" without expressed or implied warranty.
     
     Revision: 2004-12-21T07:28:24+00:00 (Generated by mkdtds/1.06)

     R4.9.18  URLs updated.
     
     This DTD module is identified by the SYSTEM identifier:
     
       SYSTEM "https://suika.suikawiki.org/www/markup/2004/tree/schema/tree-qname.mod"
     
     ...................................................................... -->

<!-- Tree QName (Qualified Name) Module

     This module is contained in two parts, labeled Section 'A' and 'B':
     
       Section A declares parameter entities to support namespace-qualified
       names, namespace declarations, and name prefixing.
     
       Section B declares parameter entities used to provide namespace-qualified
       names for all element types and global attribute names.
-->

<!ENTITY % sgml.tag.minimizable "IGNORE">

<!ENTITY % NS.prefixed "IGNORE">

<!-- Section A: XML Namespace Framework :::::::::::::::::::::::::: -->

<!-- 1. Declare a %tree.prefixed; conditional section keyword, used
        to activate namespace prefixing. -->
<!ENTITY % tree.prefixed "%NS.prefixed;">

<!ENTITY % tree.global.attrs.prefixed "%NS.prefixed;">

<!ENTITY % tree.xsi.attrs "INCLUDE">

<!-- 2. Declare a parameter entity %tree.xmlns; containing
        the URI reference used to identity the namespace. -->
<!ENTITY % tree.xmlns "http://pc5.2ch.net/test/read.cgi/hp/1101043958/564">

<!-- 3. Declare parameter entity %tree.prefix; containing
        the default namespace prefix string to use when prefixing
        is enabled. This may be overridden in the DTD driver or the
        internal subset of a document instance.
        
        NOTE: As specified in XML Namespace speficications, the namespace
        prefix serves as a proxy for the URI reference, and is not in itself
        significant. -->
<!ENTITY % tree.prefix "tree">

<!-- 4. Declare parameter entity %tree.pfx; containing the
        colonized prefix (e.g, '%tree.prefix;:') used when
        prefixing is active, an empty string when it is not. -->
<![%tree.prefixed;[
<!ENTITY % tree.pfx "%tree.prefix;:">
]]>
<!ENTITY % tree.pfx "">

<!-- declare qualified name extensions here ............ -->
<!ENTITY % tree-qname-extra.mod "">
%tree-qname-extra.mod;

<!-- 5. The parameter entity %tree.xmlns.extra.attrib; may be
        redeclared to contain any foreign namespace declaration
        attributes for namespaces embedded.  The default
        is an empty string. -->
<!ENTITY % tree.xmlns.extra.attrib "">

<!-- The parameter entity %URI.datatype; should already be defined in
     Datatype module. -->
<!ENTITY % URI.datatype "CDATA">

<![%tree.prefixed;[
<!ENTITY % tree.xmlns.decl.attrib
	"xmlns:%tree.prefix;	%URI.datatype;	#FIXED '%tree.xmlns;'">
]]>
<!ENTITY % tree.xmlns.decl.attrib
	"xmlns	%URI.datatype;	#FIXED '%tree.xmlns;'">

<!-- Declare a parameter entity %XSI.prefix as a prefix to use for
     XML Schema Instance attributes. -->
<!ENTITY % XSI.prefix "xsi">

<!ENTITY % XSI.pfx "%XSI.prefix;:">

<!ENTITY % XSI.xmlns "http://www.w3.org/2001/XMLSchema-instance">

<!-- Declare a parameter entity %XSI.xmlns.attrib as support for
     the schemaLocation attribute. -->
<!ENTITY % XSI.xmlns.attrib
	"xmlns:%XSI.prefix;	%URI.datatype;	#FIXED '%XSI.xmlns;'">

<![%tree.prefixed;[
<!ENTITY % NS.decl.attrib
	"%tree.xmlns.decl.attrib;
	%tree.xmlns.extra.attrib;
	%XSI.xmlns.attrib;">
]]>
<!ENTITY % NS.decl.attrib
	"%tree.xmlns.extra.attrib;
	%XSI.xmlns.attrib;">

<!-- Declare a parameter entity containing all XML namespace declaration
     attributes used, including a default xmlns declaration when prefixing
     is inactive. -->
<![%tree.prefixed;[
<!ENTITY % tree.xmlns.attrib
	"%NS.decl.attrib;">
]]>
<!ENTITY % tree.xmlns.attrib
	"%tree.xmlns.decl.attrib;
	%NS.decl.attrib;">

<!-- Section B: Tree Qualified Names :::::::::::::::::::::::::::::: -->

<!-- placeholder for qualified name redeclarations -->
<!ENTITY % tree-qname.redecl "">
%tree-qname.redecl;

<!-- 6. This section declare parameter entities used to provide
        namespace-qualified names for all element types and global
        attribute names. -->
<!ENTITY % tree.content.qname  "%tree.pfx;content">
<!ENTITY % tree.leaf.qname     "%tree.pfx;leaf">
<!ENTITY % tree.node.qname     "%tree.pfx;node">
<!ENTITY % tree.root.qname     "%tree.pfx;root">



<!-- end of tree-qname.mod -->
