<?xml version="1.0" encoding="iso-2022-jp"?>
<!-- XML Representation of
     "Exchange format for Japanese documents with composition markup
     (JIS X 4052:2000)"
     
     Inline module
     
     Copyright 2003 Wakaba <w@suika.fam.cx>.
     Revision: $Date: 2003/09/11 08:15:42 $
     
     SYSTEM "http://suika.fam.cx/gate/cvs/*checkout*/markup/jdcm/dtd/inline.mod"
  -->

<!ENTITY % jdcm.em.attrib
	"%jdcm.subbody.attrib;">
<!ENTITY % jdcm.ems.content "(#PCDATA|%jdcm.br.qname;|%jdcm.tabset.qname;|%jdcm.ruby.qname;|%jdcm.sup.qname;|%jdcm.sub.qname;|%jdcm.em.class;|%jdcm.tate.qname;|%jdcm.span.qname;|%jdcm.ch.qname;)*">

<!ENTITY % jdcm.em.element "INCLUDE">
<![%jdcm.em.element;[
<!ENTITY % jdcm.em.content "%jdcm.ems.content;">
<!ELEMENT %jdcm.em.qname; %jdcm.em.content;>
]]>
<!ENTITY % jdcm.em.attlist "INCLUDE">
<![%jdcm.em.attlist;[
<!ATTLIST %jdcm.em.qname;
	%jdcm.em.attrib;>
]]>

<!ENTITY % jdcm.strong.element "INCLUDE">
<![%jdcm.strong.element;[
<!ENTITY % jdcm.strong.content "%jdcm.ems.content;">
<!ELEMENT %jdcm.strong.qname; %jdcm.strong.content;>
]]>
<!ENTITY % jdcm.strong.attlist "INCLUDE">
<![%jdcm.strong.attlist;[
<!ATTLIST %jdcm.strong.qname;
	%jdcm.em.attrib;>
]]>

<!ENTITY % jdcm.u.element "INCLUDE">
<![%jdcm.u.element;[
<!ENTITY % jdcm.u.content "%jdcm.ems.content;">
<!ELEMENT %jdcm.u.qname; %jdcm.u.content;>
]]>
<!ENTITY % jdcm.u.attlist "INCLUDE">
<![%jdcm.u.attlist;[
<!ATTLIST %jdcm.u.qname;
	%jdcm.em.attrib;>
]]>

<!ENTITY % jdcm.strike.element "INCLUDE">
<![%jdcm.strike.element;[
<!ENTITY % jdcm.strike.content "%jdcm.ems.content;">
<!ELEMENT %jdcm.strike.qname; %jdcm.strike.content;>
]]>
<!ENTITY % jdcm.strike.attlist "INCLUDE">
<![%jdcm.strike.attlist;[
<!ATTLIST %jdcm.strike.qname;
	%jdcm.em.attrib;>
]]>

<!ENTITY % jdcm.span.element "INCLUDE">
<![%jdcm.span.element;[
<!ENTITY % jdcm.span.content "(#PCDATA|%jdcm.Inline.class;)*">
<!ELEMENT %jdcm.span.qname; %jdcm.span.content;>
]]>
<!ENTITY % jdcm.span.attlist "INCLUDE">
<![%jdcm.span.attlist;[
<!ATTLIST %jdcm.span.qname;
	%jdcm.subbody.attrib;>
]]>

<!-- end of inline.mod -->
