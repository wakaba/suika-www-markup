<!-- ...................................................................... -->
<!-- Chirashi no Ura Structure Module ..................................... -->
<!-- file: chirashi-struct.mod
     
     This is a markup vocabulary for "chirashi no ura" (reversed side of 
     handbills)
     
     Copyright 2005 Wakaba <wakaba@suikawiki.org>, All Rights Reserved.
     
     Permission to use, copy, modify and distribute this DTD and its
     accompanying documentation for any purpose and without fee is hereby
     granted in perpetuity, provided that the above copyright notice and
     this paragraph appear in all copies.  The copyright holders make no
     representation about the suitability of the DTD for any purpose.
     
     It is provided "as is" without expressed or implied warranty.
     
     Revision: 2005-08-24T04:42:40+00:00 (Generated by mkdtds/1.06)

     R4.9.18  URLs updated.
     
     This DTD module is identified by the SYSTEM identifier:
     
       SYSTEM "https://suika.suikawiki.org/www/markup/2005/chirashi/schema/chirashi-struct.mod"
     
     ...................................................................... -->

<!-- Structure

       チラシの裏

     This module defines the major structural element types and
     their attributes.
-->

<!-- チラシの裏 ................................... -->

<!ENTITY % chirashi.チラシの裏.element "INCLUDE">
<![%chirashi.チラシの裏.element;[
<!ENTITY % chirashi.チラシの裏.content "(#PCDATA|%Flow.mix;)*">
<!ENTITY % chirashi.チラシの裏.qname "チラシの裏">
<!ENTITY % chirashi.チラシの裏.tagmin.start "-">
<!ENTITY % chirashi.チラシの裏.tagmin.end "-">
<![%sgml.tag.minimizable;[
<!ENTITY % chirashi.チラシの裏.tagmin "%chirashi.チラシの裏.tagmin.start; %chirashi.チラシの裏.tagmin.end;">
<!-- end of sgml.tag.minimizable -->]]>
<!ENTITY % chirashi.チラシの裏.tagmin "">
<!ELEMENT %chirashi.チラシの裏.qname; %chirashi.チラシの裏.tagmin; %chirashi.チラシの裏.content;>
<!-- end of chirashi.チラシの裏.element -->]]>

<!ENTITY % chirashi.チラシの裏.attlist "INCLUDE">
<![%chirashi.チラシの裏.attlist;[
<!ATTLIST %chirashi.チラシの裏.qname;
	%chirashi.common.attrib;>
<!-- end of chirashi.チラシの裏.attlist -->]]>


<!-- end of chirashi-struct.mod -->
