<!-- ...................................................................... -->
<!-- Hypertext Markup Language Non-Standard Elements and Attributes
             Common Attributes Module ..................................... -->
<!-- file: html-non-standard-attribs.mod
     

     
     Copyright 2005 Wakaba <wakaba@suikawiki.org>, All Rights Reserved.
     
     Permission to use, copy, modify and distribute this DTD and its
     accompanying documentation for any purpose and without fee is hereby
     granted in perpetuity, provided that the above copyright notice and
     this paragraph appear in all copies.  The copyright holders make no
     representation about the suitability of the DTD for any purpose.
     
     It is provided "as is" without expressed or implied warranty.
     
     Revision: 2005-04-05T01:46:49+00:00 (Generated by mkdtds/1.06)

     R4.9.18  URLs updated.
     
     This DTD module is identified by the SYSTEM identifier:
     
       SYSTEM "https://suika.suikawiki.org/gate/cvs/*checkout*/markup/html/dtd/html-non-standard-attribs.mod"
     
     ...................................................................... -->

<!-- Common Attributes

     This module declares many of the common attributes.
-->

<!ENTITY % html-non-standard.common.extra.attrib "">

<!ENTITY % html-non-standard.au.copyright.attrib
	'%html-non-standard.copyright.attribute.qname;	%html-non-standard.yesno.datatype;	"no"'>

<!ENTITY % html-non-standard.common.attrib
	"%html-non-standard.common.extra.attrib;
	%html-non-standard.xmlns.attrib;
	xml:base	%URI.datatype;	#IMPLIED
	xml:lang	%LanguageCode.datatype;	#IMPLIED
	xml:space	(default|preserve)	#IMPLIED">

<!-- Input format specification
     <http://www.au.kddi.com/ezfactory/tec/spec/wap_tag1.html#tag3> -->
<!ENTITY % html-non-standard.format.attrib
	"%html-non-standard.format.attribute.qname;	%html-non-standard.au.format.datatype;	#IMPLIED">

<!ENTITY % html-non-standard.id.attrib
	"id	ID	#IMPLIED">

<!-- Input format specification
     <http://www.au.kddi.com/ezfactory/tec/spec/wap_tag1.html#tag3> -->
<!ENTITY % html-non-standard.istyle.attrib
	"%html-non-standard.istyle.attribute.qname;	%html-non-standard.istyle.datatype;	#IMPLIED">


<!-- end of html-non-standard-attribs.mod -->
