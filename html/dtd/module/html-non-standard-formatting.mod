<!-- ...................................................................... -->
<!-- Hypertext Markup Language Non-Standard Elements and Attributes
             Inline Formatting Module ..................................... -->
<!-- file: html-non-standard-formatting.mod
     

     
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
     
       SYSTEM "https://suika.suikawiki.org/gate/cvs/*checkout*/markup/html/dtd/html-non-standard-formatting.mod"
     
     ...................................................................... -->

<!-- Inline Formatting

       blink
-->

<!-- blink: Blinking text (Netscape, au) ............... -->

<!ENTITY % html-non-standard.blink.element "INCLUDE">
<![%html-non-standard.blink.element;[
<!ENTITY % html-non-standard.blink.content "(#PCDATA|%Inline.mix;)">
<!ENTITY % html-non-standard.blink.qname "blink">
<!ENTITY % html-non-standard.blink.tagmin.start "-">
<!ENTITY % html-non-standard.blink.tagmin.end "-">
<![%sgml.tag.minimizable;[
<!ENTITY % html-non-standard.blink.tagmin "%html-non-standard.blink.tagmin.start; %html-non-standard.blink.tagmin.end;">
<!-- end of sgml.tag.minimizable -->]]>
<!ENTITY % html-non-standard.blink.tagmin "">
<!ELEMENT %html-non-standard.blink.qname; %html-non-standard.blink.tagmin; %html-non-standard.blink.content;>
<!-- end of html-non-standard.blink.element -->]]>

<!ENTITY % html-non-standard.blink.attlist "INCLUDE">
<![%html-non-standard.blink.attlist;[
<!ATTLIST %html-non-standard.blink.qname;
	%html-non-standard.common.attrib;>
<!-- end of html-non-standard.blink.attlist -->]]>


<!-- end of html-non-standard-formatting.mod -->
