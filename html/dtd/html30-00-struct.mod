<?xml version="1.0" encoding="iso-2022-jp"?>
<!-- Hypertext Markup Language 3.0 (draft 00) : Structual module
     
     Copyright 2003 Wakaba <w@suika.fam.cx>.
     Revision: $Date: 2003/09/17 23:57:40 $
     
     SYSTEM "http://suika.fam.cx/gate/cvs/*checkout*/markup/html/dtd/html30--00-struct.mod"
  -->

<!-- note: admonishments such as notes,
     cautions or warnings, as commonly used in technical documentation -->
<!ENTITY % html30-00.note.element "INCLUDE">
<![%html30-00.note.element;[
<!ENTITY % html30-00.note.content "(#PCDATA|%Flow.mix;)*">
<!ELEMENT %html30-00.note.qname; %html30-00.note.content;>
]]>
<!ENTITY % html30-00.note.attlist "INCLUDE">
<![%html30-00.note.attlist;[
<!ATTLIST %html30-00.note.qname;
	%html30-00.attrs.attrib;
	%html30-00.src.attrib;
	%html30-00.url.link.attrib;
	%html30-00.needs.attrib;
	%html30-00.common.attrib;>
]]>

<!-- end of html30-00-struct.mod -->
