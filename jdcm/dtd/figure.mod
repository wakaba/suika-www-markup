<?xml version="1.0" encoding="iso-2022-jp"?>
<!-- XML Representation of
     "Exchange format for Japanese documents with composition markup
     (JIS X 4052:2000)"
     
     Figure module
     
     Copyright 2003 Wakaba <w@suika.fam.cx>.
     Revision: $Date: 2003/09/11 08:15:42 $
     
     SYSTEM "http://suika.fam.cx/gate/cvs/*checkout*/markup/jdcm/dtd/figure.mod"
  -->

<!-- Figure, photo, etc. with its margin, caption, note, etc.
     [JIS X 4052:2000, 6.7] -->
<!ENTITY % jdcm.zu.element "INCLUDE">
<![%jdcm.zu.element;[
<!ENTITY % jdcm.zu.content "EMPTY">
<!ELEMENT %jdcm.zu.qname; %jdcm.zu.content;>
]]>
<!ENTITY % jdcm.zu.attlist "INCLUDE">
<![%jdcm.zu.attlist;[
<!ATTLIST %jdcm.zu.qname;
	src	%URI.datatype;	#REQUIRED
	%jdcm.subbody.attrib;>
]]>


<!-- end of figure.mod -->
