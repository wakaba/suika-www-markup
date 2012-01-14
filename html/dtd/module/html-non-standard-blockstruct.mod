<!-- ...................................................................... -->
<!-- Hypertext Markup Language Non-Standard Elements and Attributes
             Block Structual Module ....................................... -->
<!-- file: html-non-standard-blockstruct.mod
     

     
     Copyright 2005 Wakaba <w@suika.fam.cx>, All Rights Reserved.
     
     Permission to use, copy, modify and distribute this DTD and its
     accompanying documentation for any purpose and without fee is hereby
     granted in perpetuity, provided that the above copyright notice and
     this paragraph appear in all copies.  The copyright holders make no
     representation about the suitability of the DTD for any purpose.
     
     It is provided "as is" without expressed or implied warranty.
     
     Revision: 2005-04-05T01:46:49+00:00 (Generated by mkdtds/1.06)
     
     This DTD module is identified by the SYSTEM identifier:
     
       SYSTEM "http://suika.fam.cx/gate/cvs/*checkout*/markup/html/dtd/html-non-standard-blockstruct.mod"
     
     ...................................................................... -->

<!-- Block Structual

       plaintext
-->

<!-- plaintext: Don't recognize markups (HTML 2, HTML 3.2, au)  -->

<!ENTITY % html-non-standard.plaintext.element "INCLUDE">
<![%html-non-standard.plaintext.element;[
<!ENTITY % html-non-standard.plaintext.content "%html-non-standard.plaintext.qname;">
<!ENTITY % html-non-standard.plaintext.qname "plaintext">
<!ENTITY % html-non-standard.plaintext.tagmin.start "-">
<!ENTITY % html-non-standard.plaintext.tagmin.end "-">
<![%sgml.tag.minimizable;[
<!ENTITY % html-non-standard.plaintext.tagmin "%html-non-standard.plaintext.tagmin.start; %html-non-standard.plaintext.tagmin.end;">
<!-- end of sgml.tag.minimizable -->]]>
<!ENTITY % html-non-standard.plaintext.tagmin "">
<!ELEMENT %html-non-standard.plaintext.qname; %html-non-standard.plaintext.tagmin; %html-non-standard.plaintext.content;>
<!-- end of html-non-standard.plaintext.element -->]]>

<!ENTITY % html-non-standard.plaintext.attlist "INCLUDE">
<![%html-non-standard.plaintext.attlist;[
<!ATTLIST %html-non-standard.plaintext.qname;
	%html-non-standard.common.attrib;>
<!-- end of html-non-standard.plaintext.attlist -->]]>


<!-- end of html-non-standard-blockstruct.mod -->