<?xml version="1.0" encoding="iso-2022-jp"?>
<!-- XML Representation of
     "Exchange format for Japanese documents with composition markup
     (JIS X 4052:2000)"
     
     Compound module
     
     Copyright 2003 Wakaba <w@suika.fam.cx>.
     Revision: $Date: 2003/09/11 08:15:42 $
     
     SYSTEM "http://suika.fam.cx/gate/cvs/*checkout*/markup/jdcm/dtd/compound.mod"
  -->

<!ENTITY % jdcm.sub.element "INCLUDE">
<![%jdcm.sub.element;[
<!ENTITY % jdcm.sub.content "(#PCDATA|%jdcm.sup.qname;|%jdcm.sub.qname;|%jdcm.span.qname;|%jdcm.ch.qname;)*">
<!ELEMENT %jdcm.sub.qname; %jdcm.sub.content;>
]]>
<!ENTITY % jdcm.sub.attlist "INCLUDE">
<![%jdcm.sub.attlist;[
<!ATTLIST %jdcm.sub.qname;
	%jdcm.subbody.attrib;>
]]>

<!ENTITY % jdcm.sup.element "INCLUDE">
<![%jdcm.sup.element;[
<!ENTITY % jdcm.sup.content "(#PCDATA|%jdcm.sup.qname;|%jdcm.sub.qname;|%jdcm.span.qname;|%jdcm.ch.qname;)*">
<!ELEMENT %jdcm.sup.qname; %jdcm.sup.content;>
]]>
<!ENTITY % jdcm.sup.attlist "INCLUDE">
<![%jdcm.sup.attlist;[
<!ATTLIST %jdcm.sup.qname;
	%jdcm.subbody.attrib;>
]]>

<!-- Multiline gloss (割注), [JIS X 4052:2000, 6.16] -->
<!ENTITY % jdcm.mlg.element "INCLUDE">
<![%jdcm.mlg.element;[
<!ENTITY % jdcm.mlg.content "(#PCDATA|%jdcm.sup.qname;|%jdcm.sub.qname;|%jdcm.yoko.qname;|%jdcm.tate.qname;|%jdcm.span.qname;|%jdcm.ch.qname;)*">
<!ELEMENT %jdcm.mlg.qname; %jdcm.mlg.content;>
]]>
<!ENTITY % jdcm.mlg.attlist "INCLUDE">
<![%jdcm.mlg.attlist;[
<!ATTLIST %jdcm.mlg.qname;
	%jdcm.subbody.attrib;>
]]>

<!-- 縦中横 [JIS X 4052:2000, 6.17] -->
<!ENTITY % jdcm.yoko.element "INCLUDE">
<![%jdcm.yoko.element;[
<!ENTITY % jdcm.yoko.content "(#PCDATA|%jdcm.sup.qname;|%jdcm.sub.qname;|%jdcm.span.qname;|%jdcm.ch.qname;)*">
<!ELEMENT %jdcm.yoko.qname; %jdcm.yoko.content;>
]]>
<!ENTITY % jdcm.yoko.attlist "INCLUDE">
<![%jdcm.yoko.attlist;[
<!ATTLIST %jdcm.yoko.qname;
	%jdcm.subbody.attrib;>
]]>

<!-- 欧文用文字の和字扱い [JIS X 4052:2000, 6.18] -->
<!ENTITY % jdcm.tate.element "INCLUDE">
<![%jdcm.tate.element;[
<!ENTITY % jdcm.tate.content "(#PCDATA|%jdcm.br.qname;|%jdcm.tabset.qname;|%jdcm.ruby.qname;|%jdcm.em.class;|%jdcm.span.qname;|%jdcm.ch.qname;)*">
<!ELEMENT %jdcm.tate.qname; %jdcm.tate.content;>
]]>
<!ENTITY % jdcm.tate.attlist "INCLUDE">
<![%jdcm.tate.attlist;[
<!ATTLIST %jdcm.tate.qname;
	%jdcm.subbody.attrib;>
]]>

<!ENTITY % jdcm.ruby.element "INCLUDE">
<![%jdcm.ruby.element;[
<!ENTITY % jdcm.ruby.content "((%jdcm.rbc.qname;,%jdcm.rtc.qname;,%jdcm.rtc.qname;?)|(%jdcm.rb.qname;,%jdcm.rt.qname;))">
<!ELEMENT %jdcm.ruby.qname; %jdcm.ruby.content;>
]]>
<!ENTITY % jdcm.ruby.attlist "INCLUDE">
<![%jdcm.ruby.attlist;[
<!ATTLIST %jdcm.ruby.qname;
	%jdcm.subbody.attrib;>
]]>

<!ENTITY % jdcm.rbc.element "INCLUDE">
<![%jdcm.rbc.element;[
<!ENTITY % jdcm.rbc.content "(%jdcm.rb.qname;)+">
<!ELEMENT %jdcm.rbc.qname; %jdcm.rbc.content;>
]]>
<!ENTITY % jdcm.rbc.attlist "INCLUDE">
<![%jdcm.rbc.attlist;[
<!ATTLIST %jdcm.rbc.qname;
	%jdcm.subbody.attrib;>
]]>

<!ENTITY % jdcm.rtc.element "INCLUDE">
<![%jdcm.rtc.element;[
<!ENTITY % jdcm.rtc.content "(%jdcm.rt.qname;)+">
<!ELEMENT %jdcm.rtc.qname; %jdcm.rtc.content;>
]]>
<!ENTITY % jdcm.rtc.attlist "INCLUDE">
<![%jdcm.rtc.attlist;[
<!ATTLIST %jdcm.rtc.qname;
	%jdcm.subbody.attrib;>
]]>

<!ENTITY % jdcm.rb.element "INCLUDE">
<![%jdcm.rb.element;[
<!ENTITY % jdcm.rb.content "(#PCDATA|%jdcm.sup.qname;|%jdcm.sub.qname;|%jdcm.em.class;|%jdcm.yoko.qname;|%jdcm.tate.qname;|%jdcm.span.qname;|%jdcm.ch.qname;)*">
<!ELEMENT %jdcm.rb.qname; %jdcm.rb.content;>
]]>
<!ENTITY % jdcm.rb.attlist "INCLUDE">
<![%jdcm.rb.attlist;[
<!ATTLIST %jdcm.rb.qname;
	%jdcm.subbody.attrib;>
]]>


<!ENTITY % jdcm.rt.element "INCLUDE">
<![%jdcm.rt.element;[
<!ENTITY % jdcm.rt.content "(#PCDATA|%jdcm.sup.qname;|%jdcm.sub.qname;|%jdcm.em.class;|%jdcm.yoko.qname;|%jdcm.tate.qname;|%jdcm.span.qname;|%jdcm.ch.qname;)*">
<!ELEMENT %jdcm.rt.qname; %jdcm.rt.content;>
]]>
<!ENTITY % jdcm.rt.attlist "INCLUDE">
<![%jdcm.rt.attlist;[
<!ATTLIST %jdcm.rt.qname;
	rbspan	%jdcm.positiveinteger.datatype;	"1"
	%jdcm.subbody.attrib;>
]]>


<!-- end of compound.mod -->
