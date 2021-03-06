<!-- ...................................................................... -->
<!-- Web Forms XML Submission 2.0 Call For Comments -- 27 June 2004
             QName (Qualified Name) Module ................................ -->
<!-- file: webforms20-submission-qname.mod
     
     Web Forms 2.0 XML Submission Format (application/x-www-form+xml).
     
     Copyright 2005 Wakaba <w@suika.fam.cx>, All Rights Reserved.
     
     Permission to use, copy, modify and distribute this DTD and its
     accompanying documentation for any purpose and without fee is hereby
     granted in perpetuity, provided that the above copyright notice and
     this paragraph appear in all copies.  The copyright holders make no
     representation about the suitability of the DTD for any purpose.
     
     It is provided "as is" without expressed or implied warranty.
     
     Revision: 2005-04-05T01:46:48+00:00 (Generated by mkdtds/1.06)
     
     This DTD module is identified by the SYSTEM identifier:
     
       SYSTEM "webforms20-submission-qname.mod"
     
     ...................................................................... -->

<!-- Web Forms XML Submission QName (Qualified Name) Module

     This module is contained in two parts, labeled Section 'A' and 'B':
     
       Section A declares parameter entities to support namespace-qualified
       names, namespace declarations, and name prefixing.
     
       Section B declares parameter entities used to provide namespace-qualified
       names for all element types and global attribute names.
-->

<!ENTITY % sgml.tag.minimizable "IGNORE">

<!ENTITY % NS.prefixed "IGNORE">

<!-- Section A: XML Namespace Framework :::::::::::::::::::::::::: -->

<!-- 1. Declare a %webforms20-submission.prefixed; conditional section keyword, used
        to activate namespace prefixing. -->
<!ENTITY % webforms20-submission.prefixed "IGNORE">

<!ENTITY % webforms20-submission.global.attrs.prefixed "IGNORE">

<!ENTITY % webforms20-submission.xsi.attrs "INCLUDE">

<!-- 2. Declare a parameter entity %webforms20-submission.xmlns; containing
        the URI reference used to identity the namespace. -->
<!ENTITY % webforms20-submission.xmlns "uuid:d10e4fd6-2c01-49e8-8f9d-0ab964387e32">

<!-- 3. Declare parameter entity %webforms20-submission.prefix; containing
        the default namespace prefix string to use when prefixing
        is enabled. This may be overridden in the DTD driver or the
        internal subset of a document instance.
        
        NOTE: As specified in XML Namespace speficications, the namespace
        prefix serves as a proxy for the URI reference, and is not in itself
        significant. -->
<!ENTITY % webforms20-submission.prefix "form">

<!-- 4. Declare parameter entity %webforms20-submission.pfx; containing the
        colonized prefix (e.g, '%webforms20-submission.prefix;:') used when
        prefixing is active, an empty string when it is not. -->
<![%webforms20-submission.prefixed;[
<!ENTITY % webforms20-submission.pfx "%webforms20-submission.prefix;:">
]]>
<!ENTITY % webforms20-submission.pfx "">

<!-- declare qualified name extensions here ............ -->
<!ENTITY % webforms20-submission-qname-extra.mod "">
%webforms20-submission-qname-extra.mod;

<!-- 5. The parameter entity %webforms20-submission.xmlns.extra.attrib; may be
        redeclared to contain any foreign namespace declaration
        attributes for namespaces embedded.  The default
        is an empty string. -->
<!ENTITY % webforms20-submission.xmlns.extra.attrib "">

<!-- The parameter entity %URI.datatype; should already be defined in
     Datatype module. -->
<!ENTITY % URI.datatype "CDATA">

<![%webforms20-submission.prefixed;[
<!ENTITY % webforms20-submission.xmlns.decl.attrib
	"xmlns:%webforms20-submission.prefix;	%URI.datatype;	#FIXED '%webforms20-submission.xmlns;'">
]]>
<!ENTITY % webforms20-submission.xmlns.decl.attrib
	"xmlns	%URI.datatype;	#FIXED '%webforms20-submission.xmlns;'">

<!-- Declare a parameter entity %XSI.prefix as a prefix to use for
     XML Schema Instance attributes. -->
<!ENTITY % XSI.prefix "xsi">

<!ENTITY % XSI.pfx "%XSI.prefix;:">

<!ENTITY % XSI.xmlns "http://www.w3.org/2001/XMLSchema-instance">

<!-- Declare a parameter entity %XSI.xmlns.attrib as support for
     the schemaLocation attribute. -->
<!ENTITY % XSI.xmlns.attrib
	"xmlns:%XSI.prefix;	%URI.datatype;	#FIXED '%XSI.xmlns;'">

<![%webforms20-submission.prefixed;[
<!ENTITY % NS.decl.attrib
	"%webforms20-submission.xmlns.decl.attrib;
	%webforms20-submission.xmlns.extra.attrib;
	%XSI.xmlns.attrib;">
]]>
<!ENTITY % NS.decl.attrib
	"%webforms20-submission.xmlns.extra.attrib;
	%XSI.xmlns.attrib;">

<!-- Declare a parameter entity containing all XML namespace declaration
     attributes used, including a default xmlns declaration when prefixing
     is inactive. -->
<![%webforms20-submission.prefixed;[
<!ENTITY % webforms20-submission.xmlns.attrib
	"%NS.decl.attrib;">
]]>
<!ENTITY % webforms20-submission.xmlns.attrib
	"%webforms20-submission.xmlns.decl.attrib;
	%NS.decl.attrib;">

<!-- Section B: Web Forms XML Submission Qualified Names :::::::::: -->

<!-- placeholder for qualified name redeclarations -->
<!ENTITY % webforms20-submission-qname.redecl "">
%webforms20-submission-qname.redecl;

<!-- 6. This section declare parameter entities used to provide
        namespace-qualified names for all element types and global
        attribute names. -->
<!ENTITY % webforms20-submission.field.qname    "%webforms20-submission.pfx;field">
<!ENTITY % webforms20-submission.file.qname     "%webforms20-submission.pfx;file">
<!ENTITY % webforms20-submission.repeat.qname   "%webforms20-submission.pfx;repeat">
<!ENTITY % webforms20-submission.submission.qname "%webforms20-submission.pfx;submission">



<!-- end of webforms20-submission-qname.mod -->
