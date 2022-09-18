<!-- ...................................................................... -->
<!-- Handbill Common Attributes Module .................................... -->
<!-- file: handbill-attribs.mod
     
     This is a markup vocabulary for "chirashi no ura" (reversed side of 
     handbills), as defined by 894
     <http://pc5.2ch.net/test/read.cgi/hp/1101043958/894>.
     
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
     
       SYSTEM "https://suika.suikawiki.org/www/markup/2004/handbill/schema/handbill-attribs.mod"
     
     ...................................................................... -->

<!-- Common Attributes

     This module declares many of the common attributes.
-->

<!ENTITY % handbill.common.extra.attrib "">

<!ENTITY % handbill.common.attrib
	"%handbill.common.extra.attrib;
	%handbill.xmlns.attrib;
	xml:lang	%LanguageCode.datatype;	#IMPLIED
	xml:base	%URI.datatype;	#IMPLIED
	xml:space	(default|preserve)	#IMPLIED
	%XSI.prefix;:schemaLocation CDATA #IMPLIED
	%XSI.prefix;:type NMTOKEN #IMPLIED
	%XSI.prefix;:nil (true|false|1|0) #IMPLIED">


<!-- end of handbill-attribs.mod -->
