<?xml version="1.0" encoding="iso-2022-jp"?>
<!-- XML Representation of
     "Exchange format for Japanese documents with composition markup
     (JIS X 4052:2000)"
     
     Structure module
     
     Copyright 2003 Wakaba <w@suika.fam.cx>.
     Revision: $Date: 2003/09/11 08:15:42 $
     
     SYSTEM "http://suika.fam.cx/gate/cvs/*checkout*/markup/jdcm/dtd/struct.mod"
  -->

<!ENTITY % jdcm.jdcm.element "INCLUDE">
<![%jdcm.jdcm.element;[
<!ENTITY % jdcm.jdcm.content "(%jdcm.head.qname;,%jdcm.body.qname;)">
<!ELEMENT %jdcm.jdcm.qname; %jdcm.jdcm.content;>
]]>
<!ENTITY % jdcm.jdcm.attlist "INCLUDE">
<![%jdcm.jdcm.attlist;[
<!ATTLIST %jdcm.jdcm.qname;
	%jdcm.core.attrib;>
]]>

<!ENTITY % jdcm.body.element "INCLUDE">
<![%jdcm.body.element;[
<!ENTITY % jdcm.body.content "(%jdcm.Block.class;)*">
<!ELEMENT %jdcm.body.qname; %jdcm.body.content;>
]]>
<!ENTITY % jdcm.body.attlist "INCLUDE">
<![%jdcm.body.attlist;[
<!ATTLIST %jdcm.body.qname;
	%jdcm.subbody.attrib;>
]]>

<!-- header elements -->
<!ENTITY % jdcm.style.element "INCLUDE">
<![%jdcm.style.element;[
<!ENTITY % jdcm.style.content "(#PCDATA)*">
<!ELEMENT %jdcm.style.qname; %jdcm.style.content;>
]]>
<!ENTITY % jdcm.style.attlist "INCLUDE">
<![%jdcm.style.attlist;[
<!ATTLIST %jdcm.style.qname;
	type	%ContentType.datatype;	#FIXED	"text/jss"
	%jdcm.subsetelement.attrib;>
<!-- type is required -->
]]>

<!ENTITY % jdcm.link.element "INCLUDE">
<![%jdcm.link.element;[
<!ENTITY % jdcm.link.content "EMPTY">
<!ELEMENT %jdcm.link.qname; %jdcm.link.content;>
]]>
<!ENTITY % jdcm.link.attlist "INCLUDE">
<![%jdcm.link.attlist;[
<!ATTLIST %jdcm.link.qname;
	href	%URI.datatype;	#REQUIRED
	rel	(stylesheet|prev|next)	#REQUIRED
	type	%ContentType.datatype;	#IMPLIED
	%jdcm.subsetelement.attrib;>
<!-- type is required if rel=stylesheet -->
]]>

<!ENTITY % jdcm.head.element "INCLUDE">
<![%jdcm.head.element;[
<!ENTITY % jdcm.head.content "(%jdcm.style.qname;|%jdcm.link.qname;)*">
<!ELEMENT %jdcm.head.qname; %jdcm.head.content;>
]]>
<!ENTITY % jdcm.head.attlist "INCLUDE">
<![%jdcm.head.attlist;[
<!ATTLIST %jdcm.head.qname;
	%jdcm.subsetelement.attrib;>
]]>


<!-- block elements -->
<!ENTITY % jdcm.p.element "INCLUDE">
<![%jdcm.p.element;[
<!ENTITY % jdcm.p.content "(#PCDATA|%jdcm.Inline.class;|%jdcm.zu.qname;)*">
<!ELEMENT %jdcm.p.qname; %jdcm.p.content;>
]]>
<!ENTITY % jdcm.p.attlist "INCLUDE">
<![%jdcm.p.attlist;[
<!ATTLIST %jdcm.p.qname;
	%jdcm.subbody.attrib;>
]]>

<!ENTITY % jdcm.div.element "INCLUDE">
<![%jdcm.div.element;[
<!ENTITY % jdcm.div.content "(#PCDATA|%jdcm.Flow.mix;)*">
<!ELEMENT %jdcm.div.qname; %jdcm.div.content;>
]]>
<!ENTITY % jdcm.div.attlist "INCLUDE">
<![%jdcm.div.attlist;[
<!ATTLIST %jdcm.div.qname;
	%jdcm.subbody.attrib;>
]]>

<!ENTITY % jdcm.br.element "INCLUDE">
<![%jdcm.br.element;[
<!ENTITY % jdcm.br.content "EMPTY">
<!ELEMENT %jdcm.br.qname; %jdcm.br.content;>
]]>
<!ENTITY % jdcm.br.attlist "INCLUDE">
<![%jdcm.br.attlist;[
<!ATTLIST %jdcm.br.qname;
	%jdcm.subbody.attrib;>
]]>

<!-- heading elements -->
<!ENTITY % jdcm.hn.attrib
	"%jdcm.subbody.attrib;">
<!ENTITY % jdcm.hn.content
	"(#PCDATA|%jdcm.Inline.class;)*">

<!ENTITY % jdcm.h1.element "INCLUDE">
<![%jdcm.h1.element;[
<!ENTITY % jdcm.h1.content "%jdcm.hn.content;">
<!ELEMENT %jdcm.h1.qname; %jdcm.h1.content;>
]]>
<!ENTITY % jdcm.h1.attlist "INCLUDE">
<![%jdcm.h1.attlist;[
<!ATTLIST %jdcm.h1.qname;
	%jdcm.hn.attrib;>
]]>

<!ENTITY % jdcm.h2.element "INCLUDE">
<![%jdcm.h1.element;[
<!ENTITY % jdcm.h2.content "%jdcm.hn.content;">
<!ELEMENT %jdcm.h2.qname; %jdcm.h2.content;>
]]>
<!ENTITY % jdcm.h2.attlist "INCLUDE">
<![%jdcm.h1.attlist;[
<!ATTLIST %jdcm.h2.qname;
	%jdcm.hn.attrib;>
]]>

<!ENTITY % jdcm.h3.element "INCLUDE">
<![%jdcm.h1.element;[
<!ENTITY % jdcm.h3.content "%jdcm.hn.content;">
<!ELEMENT %jdcm.h3.qname; %jdcm.h3.content;>
]]>
<!ENTITY % jdcm.h3.attlist "INCLUDE">
<![%jdcm.h1.attlist;[
<!ATTLIST %jdcm.h3.qname;
	%jdcm.hn.attrib;>
]]>

<!-- end of struct.mod -->
