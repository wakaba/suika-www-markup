<?xml version="1.0" encoding="iso-2022-jp"?>
<!-- XML Representation of
     "Exchange format for Japanese documents with composition markup
     (JIS X 4052:2000)"
     
     Listing module
     
     Copyright 2003 Wakaba <w@suika.fam.cx>.
     Revision: $Date: 2003/09/11 08:15:42 $
     
     SYSTEM "http://suika.fam.cx/gate/cvs/*checkout*/markup/jdcm/dtd/list.mod"
  -->

<!-- listing -->

<!ENTITY % jdcm.dt.element "INCLUDE">
<![%jdcm.dt.element;[
<!ENTITY % jdcm.dt.content "(#PCDATA|%jdcm.Inline.class;)*">
<!ELEMENT %jdcm.dt.qname; %jdcm.dt.content;>
]]>
<!ENTITY % jdcm.dt.attlist "INCLUDE">
<![%jdcm.dt.attlist;[
<!ATTLIST %jdcm.dt.qname;
	%jdcm.subbody.attrib;>
]]>

<!ENTITY % jdcm.dd.element "INCLUDE">
<![%jdcm.dd.element;[
<!ENTITY % jdcm.dd.content "(#PCDATA|%jdcm.semiflow.mix;)*">
<!ELEMENT %jdcm.dd.qname; %jdcm.dd.content;>
]]>
<!ENTITY % jdcm.dd.attlist "INCLUDE">
<![%jdcm.dd.attlist;[
<!ATTLIST %jdcm.dd.qname;
	%jdcm.subbody.attrib;>
]]>

<!ENTITY % jdcm.dl.element "INCLUDE">
<![%jdcm.dl.element;[
<!ENTITY % jdcm.dl.content "(%jdcm.dt.qname;|%jdcm.dd.qname;)*">
<!ELEMENT %jdcm.dl.qname; %jdcm.dl.content;>
]]>
<!ENTITY % jdcm.dl.attlist "INCLUDE">
<![%jdcm.dl.attlist;[
<!ATTLIST %jdcm.dl.qname;
	%jdcm.subbody.attrib;>
]]>

<!ENTITY % jdcm.li.element "INCLUDE">
<![%jdcm.li.element;[
<!ENTITY % jdcm.li.content "(#PCDATA|%jdcm.semiflow.mix;)*">
<!ELEMENT %jdcm.li.qname; %jdcm.li.content;>
]]>
<!ENTITY % jdcm.li.attlist "INCLUDE">
<![%jdcm.li.attlist;[
<!ATTLIST %jdcm.li.qname;
	%jdcm.subbody.attrib;>
]]>

<!ENTITY % jdcm.ol.element "INCLUDE">
<![%jdcm.ol.element;[
<!ENTITY % jdcm.ol.content "(%jdcm.li.qname;)*">
<!ELEMENT %jdcm.ol.qname; %jdcm.ol.content;>
]]>
<!ENTITY % jdcm.ol.attlist "INCLUDE">
<![%jdcm.ol.attlist;[
<!ATTLIST %jdcm.ol.qname;
	%jdcm.subbody.attrib;>
]]>

<!ENTITY % jdcm.ul.element "INCLUDE">
<![%jdcm.ul.element;[
<!ENTITY % jdcm.ul.content "(%jdcm.li.qname;)*">
<!ELEMENT %jdcm.ul.qname; %jdcm.ul.content;>
]]>
<!ENTITY % jdcm.ul.attlist "INCLUDE">
<![%jdcm.ul.attlist;[
<!ATTLIST %jdcm.ul.qname;
	%jdcm.subbody.attrib;>
]]>

<!-- end of list.mod -->
