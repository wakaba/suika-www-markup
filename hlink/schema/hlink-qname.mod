<?xml version="1.0" encoding="UTF-8"?>
<!-- ....................................................................... -->
<!-- HLink Qname Module  ................................................... -->
<!-- URI: http://www.w3.org/2002/06/hlink-qname.mod

     This is HLink - a link recongnition mechanism for the XHTML Family.

     Copyright ©2002 W3C (MIT, INRIA, Keio), All Rights Reserved.

     Revision: Id: hlink-qname.mod,v 1.2 2002/09/06 16:43:51 mimasa Exp 

     This DTD module is identified by the PUBLIC and SYSTEM identifiers:

       PUBLIC "-//W3C//ENTITIES HLink Qualified Names 1.0//EN"
       SYSTEM "http://www.w3.org/2002/06/hlink-qname.mod"

     Revisions:
     (none)
     ....................................................................... -->

<!-- HLink Qname (Qualified Name) Module

     This module is contained in two parts, labeled Section 'A' and 'B':

       Section A declares parameter entities to support namespace-
       qualified names, namespace declarations, and name prefixing
       for HLink and extensions.

       Section B declares parameter entities used to provide
       namespace-qualified names for all HLink element types:

         %HLINK.hlinks.qname;   the xmlns-qualified name for <hlinks>
         ...
-->

<!-- Section A: HLink XML Namespace Framework :::::::::::::::::::: -->

<!-- 1. Declare a %HLINK.prefixed; conditional section keyword, used
        to activate namespace prefixing. The default value should
        inherit '%HLINK.NS.prefixed;' from the DTD driver, so that unless
        overridden, the default behaviour follows the overall DTD
        prefixing scheme.
-->
<!ENTITY % HLINK.NS.prefixed "IGNORE" >
<!ENTITY % HLINK.prefixed "%HLINK.NS.prefixed;" >

<!-- 2. Declare a parameter entity (eg., %HLINK.xmlns;) containing
        the URI reference used to identify the HLink namespace
-->
<!ENTITY % HLINK.xmlns  "http://www.w3.org/2002/06/hlink" >

<!-- 3. Declare parameter entities (eg., %MODULE.prefix;) containing
        the default namespace prefix string(s) to use when prefixing
        is enabled. This may be overridden in the DTD driver or the
        internal subset of an document instance. If no default prefix
        is desired, this may be declared as an empty string.

     NOTE: As specified in [XMLNAMES], the namespace prefix serves
     as a proxy for the URI reference, and is not in itself significant.
-->
<!ENTITY % HLINK.prefix  "hlink" >

<!-- 4. Declare parameter entities (eg., %HLINK.pfx;) containing the
        colonized prefix(es) (eg., '%HLINK.prefix;:') used when
        prefixing is active, an empty string when it is not.
-->
<![%HLINK.prefixed;[
<!ENTITY % HLINK.pfx  "%HLINK.prefix;:" >
]]>
<!ENTITY % HLINK.pfx  "" >

<!-- declare qualified name extensions here ............ -->
<!ENTITY % hlink-qname-extra.mod "" >
%hlink-qname-extra.mod;

<!-- 5. The parameter entity %HLINK.xmlns.extra.attrib; may be
        redeclared to contain any non-HLink namespace declaration
        attributes for namespaces embedded in XML. The default
        is an empty string.  XLink should be included here if used
        in the DTD.
-->
<!ENTITY % HLINK.xmlns.extra.attrib "" >

<![%HLINK.prefixed;[
<!ENTITY % HLINK.NS.decl.attrib
     "xmlns:%HLINK.prefix;  %URI.datatype;  #FIXED '%HLINK.xmlns;'
      %HLINK.xmlns.extra.attrib;"
>
]]>
<!ENTITY % HLINK.NS.decl.attrib
     "%HLINK.xmlns.extra.attrib;"
>

<!-- Declare a parameter entity %HLINK.NS.decl.attrib; containing all
     XML namespace declaration attributes used by HLink, including
     a default xmlns declaration when prefixing is inactive.
-->
<![%HLINK.prefixed;[
<!ENTITY % HLINK.xmlns.attrib
     "%HLINK.NS.decl.attrib;"
>
]]>
<!ENTITY % HLINK.xmlns.attrib
     "xmlns                   %URI.datatype;  #FIXED '%HLINK.xmlns;'
      %HLINK.xmlns.extra.attrib;"
>

<!-- Section B: XML Qualified Names ::::::::::::::::::::::::::::: -->

<!-- 6. This section declares parameter entities used to provide
        namespace-qualified names for all HLink element types.
-->

<!ENTITY % HLINK.hlinks.qname "%HLINK.pfx;hlinks" >
<!ENTITY % HLINK.hlink.qname "%HLINK.pfx;hlink" >

<!-- end of hlink-qname.mod -->
