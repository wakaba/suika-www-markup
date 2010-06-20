<!-- ...................................................................... -->
<!-- Handbill QName (Qualified Name) Module ............................... -->
<!-- file: handbill-qname.mod
     
     This is a markup vocabulary for "chirashi no ura" (reversed side of 
     handbills), as defined by 894
     <http://pc5.2ch.net/test/read.cgi/hp/1101043958/894>.
     
     Copyright 2010 Wakaba <w@suika.fam.cx>, All Rights Reserved.
     
     Permission to use, copy, modify and distribute this DTD and its
     accompanying documentation for any purpose and without fee is hereby
     granted in perpetuity, provided that the above copyright notice and
     this paragraph appear in all copies.  The copyright holders make no
     representation about the suitability of the DTD for any purpose.
     
     It is provided "as is" without expressed or implied warranty.
     
     Revision: 2010-06-20T04:57:09+00:00 (Generated by mkdtds/1.7)
     
     This DTD module is identified by the SYSTEM identifier:
     
       SYSTEM "http://suika.fam.cx/www/markup/2004/handbill/schema/handbill-qname.mod"
     
     ...................................................................... -->

<!-- Handbill QName (Qualified Name) Module

     This module is contained in two parts, labeled Section 'A' and 'B':
     
       Section A declares parameter entities to support namespace-qualified
       names, namespace declarations, and name prefixing.
     
       Section B declares parameter entities used to provide namespace-qualified
       names for all element types and global attribute names.
-->

<!ENTITY % sgml.tag.minimizable "IGNORE">

<!ENTITY % NS.prefixed "INCLUDE">

<!-- Section A: XML Namespace Framework :::::::::::::::::::::::::: -->

<!-- 1. Declare a %handbill.prefixed; conditional section keyword, used
        to activate namespace prefixing. -->
<!ENTITY % handbill.prefixed "INCLUDE">

<!ENTITY % handbill.global.attrs.prefixed "INCLUDE">

<!ENTITY % handbill.xsi.attrs "INCLUDE">

<!-- 2. Declare a parameter entity %handbill.xmlns; containing
        the URI reference used to identity the namespace. -->
<!ENTITY % handbill.xmlns "http://pc5.2ch.net/test/read.cgi/hp/1101043958/894">

<!-- 3. Declare parameter entity %handbill.prefix; containing
        the default namespace prefix string to use when prefixing
        is enabled. This may be overridden in the DTD driver or the
        internal subset of a document instance.
        
        NOTE: As specified in XML Namespace speficications, the namespace
        prefix serves as a proxy for the URI reference, and is not in itself
        significant. -->
<!ENTITY % handbill.prefix "my">

<!-- 4. Declare parameter entity %handbill.pfx; containing the
        colonized prefix (e.g, '%handbill.prefix;:') used when
        prefixing is active, an empty string when it is not. -->
<![%handbill.prefixed;[
<!ENTITY % handbill.pfx "%handbill.prefix;:">
]]>
<!ENTITY % handbill.pfx "">

<!-- declare qualified name extensions here ............ -->
<!ENTITY % handbill-qname-extra.mod "">
%handbill-qname-extra.mod;

<!-- 5. The parameter entity %handbill.xmlns.extra.attrib; may be
        redeclared to contain any foreign namespace declaration
        attributes for namespaces embedded.  The default
        is an empty string. -->
<!ENTITY % handbill.xmlns.extra.attrib "">

<!-- The parameter entity %URI.datatype; should already be defined in
     Datatype module. -->
<!ENTITY % URI.datatype "CDATA">

<![%handbill.prefixed;[
<!ENTITY % handbill.xmlns.decl.attrib
	"xmlns:%handbill.prefix;	%URI.datatype;	#FIXED '%handbill.xmlns;'">
]]>
<!ENTITY % handbill.xmlns.decl.attrib
	"xmlns	%URI.datatype;	#FIXED '%handbill.xmlns;'">

<!-- Declare a parameter entity %XSI.prefix as a prefix to use for
     XML Schema Instance attributes. -->
<!ENTITY % XSI.prefix "xsi">

<!ENTITY % XSI.pfx "%XSI.prefix;:">

<!ENTITY % XSI.xmlns "http://www.w3.org/2001/XMLSchema-instance">

<!-- Declare a parameter entity %XSI.xmlns.attrib as support for
     the schemaLocation attribute. -->
<!ENTITY % XSI.xmlns.attrib
	"xmlns:%XSI.prefix;	%URI.datatype;	#FIXED '%XSI.xmlns;'">

<![%handbill.prefixed;[
<!ENTITY % NS.decl.attrib
	"%handbill.xmlns.decl.attrib;
	%handbill.xmlns.extra.attrib;
	%XSI.xmlns.attrib;">
]]>
<!ENTITY % NS.decl.attrib
	"%handbill.xmlns.extra.attrib;
	%XSI.xmlns.attrib;">

<!-- Declare a parameter entity containing all XML namespace declaration
     attributes used, including a default xmlns declaration when prefixing
     is inactive. -->
<![%handbill.prefixed;[
<!ENTITY % handbill.xmlns.attrib
	"%NS.decl.attrib;">
]]>
<!ENTITY % handbill.xmlns.attrib
	"%handbill.xmlns.decl.attrib;
	%NS.decl.attrib;">

<!-- Section B: Handbill Qualified Names :::::::::::::::::::::::::: -->

<!-- placeholder for qualified name redeclarations -->
<!ENTITY % handbill-qname.redecl "">
%handbill-qname.redecl;

<!-- 6. This section declare parameter entities used to provide
        namespace-qualified names for all element types and global
        attribute names. -->
<!ENTITY % handbill.handbill.qname "%handbill.pfx;handbill">



<!-- end of handbill-qname.mod -->
