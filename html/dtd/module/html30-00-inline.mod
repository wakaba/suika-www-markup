<!-- ...................................................................... -->
<!-- Hypertext Markup Language 3.0 (draft 00) Inline Module ............... -->
<!-- file: html30-00-inline.mod
     

     
     Copyright 2005 Wakaba <wakaba@suikawiki.org>, All Rights Reserved.
     
     Permission to use, copy, modify and distribute this DTD and its
     accompanying documentation for any purpose and without fee is hereby
     granted in perpetuity, provided that the above copyright notice and
     this paragraph appear in all copies.  The copyright holders make no
     representation about the suitability of the DTD for any purpose.
     
     It is provided "as is" without expressed or implied warranty.
     
     Revision: 2005-04-05T01:46:48+00:00 (Generated by mkdtds/1.06)
     
     R4.9.18  URLs updated.

     This DTD module is identified by the SYSTEM identifier:
     
       SYSTEM "https://suika.suikawiki.org/www/markup/html/dtd/module/html30-00-inline.mod"
     
     ...................................................................... -->

<!-- Inline

       au, person, tab
-->

<!-- au: The name of an author. ........................ -->

<!ENTITY % html30-00.au.element "INCLUDE">
<![%html30-00.au.element;[
<!ENTITY % html30-00.au.content "%html30-00.text.content;">
<!ENTITY % html30-00.au.qname "au">
<!ENTITY % html30-00.au.tagmin.start "-">
<!ENTITY % html30-00.au.tagmin.end "-">
<![%sgml.tag.minimizable;[
<!ENTITY % html30-00.au.tagmin "%html30-00.au.tagmin.start; %html30-00.au.tagmin.end;">
<!-- end of sgml.tag.minimizable -->]]>
<!ENTITY % html30-00.au.tagmin "">
<!ELEMENT %html30-00.au.qname; %html30-00.au.tagmin; %html30-00.au.content;>
<!-- end of html30-00.au.element -->]]>

<!ENTITY % html30-00.au.attlist "INCLUDE">
<![%html30-00.au.attlist;[
<!ATTLIST %html30-00.au.qname;
	%html30-00.attrs.attrib;
	%html30-00.common.attrib;>
<!-- end of html30-00.au.attlist -->]]>

<!-- person: Names of people to allow these to be extracted
     automatically by indexing programs.  -->

<!ENTITY % html30-00.person.element "INCLUDE">
<![%html30-00.person.element;[
<!ENTITY % html30-00.person.content "%html30-00.text.content;">
<!ENTITY % html30-00.person.qname "person">
<!ENTITY % html30-00.person.tagmin.start "-">
<!ENTITY % html30-00.person.tagmin.end "-">
<![%sgml.tag.minimizable;[
<!ENTITY % html30-00.person.tagmin "%html30-00.person.tagmin.start; %html30-00.person.tagmin.end;">
<!-- end of sgml.tag.minimizable -->]]>
<!ENTITY % html30-00.person.tagmin "">
<!ELEMENT %html30-00.person.qname; %html30-00.person.tagmin; %html30-00.person.content;>
<!-- end of html30-00.person.element -->]]>

<!ENTITY % html30-00.person.attlist "INCLUDE">
<![%html30-00.person.attlist;[
<!ATTLIST %html30-00.person.qname;
	%html30-00.attrs.attrib;
	%html30-00.common.attrib;>
<!-- end of html30-00.person.attlist -->]]>

<!-- tab: Controls over the horizontal positioning. 
     
     See: <http://www.w3.org/MarkUp/html3/tabs.html>  -->

<!ENTITY % html30-00.tab.element "INCLUDE">
<![%html30-00.tab.element;[
<!ENTITY % html30-00.tab.content "EMPTY">
<!ENTITY % html30-00.tab.qname "tab">
<!ENTITY % html30-00.tab.tagmin.start "-">
<!ENTITY % html30-00.tab.tagmin.end "o">
<![%sgml.tag.minimizable;[
<!ENTITY % html30-00.tab.tagmin "%html30-00.tab.tagmin.start; %html30-00.tab.tagmin.end;">
<!-- end of sgml.tag.minimizable -->]]>
<!ENTITY % html30-00.tab.tagmin "">
<!ELEMENT %html30-00.tab.qname; %html30-00.tab.tagmin; %html30-00.tab.content;>
<!-- end of html30-00.tab.element -->]]>

<!ENTITY % html30-00.tab.attlist "INCLUDE">
<![%html30-00.tab.attlist;[
<!ATTLIST %html30-00.tab.qname;
	%html30-00.attrs.attrib;
	indent	%html30-00.NUMBER.datatype;	#IMPLIED
	to	IDREF	#IMPLIED
	%html30-00.common.attrib;>
<!-- end of html30-00.tab.attlist -->]]>


<!-- end of html30-00-inline.mod -->
