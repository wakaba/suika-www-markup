<?xml version="1.0" encoding="iso-2022-jp"?>
<!-- XML Representation of
     "Exchange format for Japanese documents with composition markup
     (JIS X 4052:2000)"
     
     Text module
     
     Copyright 2003 Wakaba <w@suika.fam.cx>.
     Revision: $Date: 2003/09/11 08:15:42 $
     
     SYSTEM "http://suika.fam.cx/gate/cvs/*checkout*/markup/jdcm/dtd/text.mod"
  -->

<!-- Specific glyph of character [JIS X 4052:2000, 6.2 b) 1.2)] -->
<!ENTITY % jdcm.ch.element "INCLUDE">
<![%jdcm.ch.element;[
<!ENTITY % jdcm.ch.content "(#PCDATA)*"><!-- alternative text -->
<!ELEMENT %jdcm.ch.qname; %jdcm.ch.content;>
]]>
<!ENTITY % jdcm.ch.attlist "INCLUDE">
<![%jdcm.ch.attlist;[
<!ATTLIST %jdcm.ch.qname;
	height	%jdcm.position.datatype;	#IMPLIED
	left	%jdcm.position.datatype;	"0"
	src	%URI.datatype;	#REQUIRED
	top	%jdcm.position.datatype;	"0"
	width	%jdcm.position.datatype;	#IMPLIED
	%jdcm.subbody.attrib;>
]]>


<!-- end of text.mod -->
