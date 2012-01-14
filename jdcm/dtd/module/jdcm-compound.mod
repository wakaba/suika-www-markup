<!-- ...................................................................... -->
<!-- XJDCM (Based on JIS X 4052:2000) Compound Module ..................... -->
<!-- file: jdcm-compound.mod
     
     This is XJDCM, an XML representation of JDCM
     ("Exchange format for Japanese documents with composition markup").
     
     Copyright 2010 Wakaba <w@suika.fam.cx>, All Rights Reserved.
     
     Permission to use, copy, modify and distribute this DTD and its
     accompanying documentation for any purpose and without fee is hereby
     granted in perpetuity, provided that the above copyright notice and
     this paragraph appear in all copies.  The copyright holders make no
     representation about the suitability of the DTD for any purpose.
     
     It is provided "as is" without expressed or implied warranty.
     
     Revision: 2010-06-20T04:48:31+00:00 (Generated by mkdtds/1.7)
     
     This DTD module is identified by the SYSTEM identifier:
     
       SYSTEM "data:,jdcm-dtd-module-jdcm-compound.mod"
     
     ...................................................................... -->

<!-- Compound

       mlg, rb, rbc, rt, rtc, ruby, sub, sup, tate, yoko
-->

<!-- sub ............................................... -->

<!ENTITY % jdcm.sub.element "INCLUDE">
<![%jdcm.sub.element;[
<!ENTITY % jdcm.sub.content "(#PCDATA|%jdcm.vertical-align.class;|%jdcm.span.qname;|%jdcm.character.class;)*">
<!ENTITY % jdcm.sub.qname "sub">
<!ENTITY % jdcm.sub.tagmin.start "-">
<!ENTITY % jdcm.sub.tagmin.end "-">
<![%sgml.tag.minimizable;[
<!ENTITY % jdcm.sub.tagmin "%jdcm.sub.tagmin.start; %jdcm.sub.tagmin.end;">
<!-- end of sgml.tag.minimizable -->]]>
<!ENTITY % jdcm.sub.tagmin "">
<!ELEMENT %jdcm.sub.qname; %jdcm.sub.tagmin; %jdcm.sub.content;>
<!-- end of jdcm.sub.element -->]]>

<!ENTITY % jdcm.sub.attlist "INCLUDE">
<![%jdcm.sub.attlist;[
<!ATTLIST %jdcm.sub.qname;
	%jdcm.subbody.attrib;
	%jdcm.common.attrib;>
<!-- end of jdcm.sub.attlist -->]]>

<!-- sup ............................................... -->

<!ENTITY % jdcm.sup.element "INCLUDE">
<![%jdcm.sup.element;[
<!ENTITY % jdcm.sup.content "(#PCDATA|%jdcm.vertical-align.class;|%jdcm.span.qname;|%jdcm.character.class;)*">
<!ENTITY % jdcm.sup.qname "sup">
<!ENTITY % jdcm.sup.tagmin.start "-">
<!ENTITY % jdcm.sup.tagmin.end "-">
<![%sgml.tag.minimizable;[
<!ENTITY % jdcm.sup.tagmin "%jdcm.sup.tagmin.start; %jdcm.sup.tagmin.end;">
<!-- end of sgml.tag.minimizable -->]]>
<!ENTITY % jdcm.sup.tagmin "">
<!ELEMENT %jdcm.sup.qname; %jdcm.sup.tagmin; %jdcm.sup.content;>
<!-- end of jdcm.sup.element -->]]>

<!ENTITY % jdcm.sup.attlist "INCLUDE">
<![%jdcm.sup.attlist;[
<!ATTLIST %jdcm.sup.qname;
	%jdcm.subbody.attrib;
	%jdcm.common.attrib;>
<!-- end of jdcm.sup.attlist -->]]>

<!-- mlg: Multiline gloss (割注), [JIS X 4052:2000, 6.16]  -->

<!ENTITY % jdcm.mlg.element "INCLUDE">
<![%jdcm.mlg.element;[
<!ENTITY % jdcm.mlg.content "(#PCDATA|%jdcm.inoneline-noem.class;)*">
<!ENTITY % jdcm.mlg.qname "mlg">
<!ENTITY % jdcm.mlg.tagmin.start "-">
<!ENTITY % jdcm.mlg.tagmin.end "-">
<![%sgml.tag.minimizable;[
<!ENTITY % jdcm.mlg.tagmin "%jdcm.mlg.tagmin.start; %jdcm.mlg.tagmin.end;">
<!-- end of sgml.tag.minimizable -->]]>
<!ENTITY % jdcm.mlg.tagmin "">
<!ELEMENT %jdcm.mlg.qname; %jdcm.mlg.tagmin; %jdcm.mlg.content;>
<!-- end of jdcm.mlg.element -->]]>

<!ENTITY % jdcm.mlg.attlist "INCLUDE">
<![%jdcm.mlg.attlist;[
<!ATTLIST %jdcm.mlg.qname;
	%jdcm.subbody.attrib;
	%jdcm.common.attrib;>
<!-- end of jdcm.mlg.attlist -->]]>

<!-- yoko: 縦中横 [JIS X 4052:2000, 6.17] ........... -->

<!ENTITY % jdcm.yoko.element "INCLUDE">
<![%jdcm.yoko.element;[
<!ENTITY % jdcm.yoko.content "(#PCDATA|%jdcm.inline-onedir-noem.class;)*">
<!ENTITY % jdcm.yoko.qname "yoko">
<!ENTITY % jdcm.yoko.tagmin.start "-">
<!ENTITY % jdcm.yoko.tagmin.end "-">
<![%sgml.tag.minimizable;[
<!ENTITY % jdcm.yoko.tagmin "%jdcm.yoko.tagmin.start; %jdcm.yoko.tagmin.end;">
<!-- end of sgml.tag.minimizable -->]]>
<!ENTITY % jdcm.yoko.tagmin "">
<!ELEMENT %jdcm.yoko.qname; %jdcm.yoko.tagmin; %jdcm.yoko.content;>
<!-- end of jdcm.yoko.element -->]]>

<!ENTITY % jdcm.yoko.attlist "INCLUDE">
<![%jdcm.yoko.attlist;[
<!ATTLIST %jdcm.yoko.qname;
	%jdcm.subbody.attrib;
	%jdcm.common.attrib;>
<!-- end of jdcm.yoko.attlist -->]]>

<!-- tate: 欧文用文字の和字扱い [JIS X 4052:2000, 6.18]  -->

<!ENTITY % jdcm.tate.element "INCLUDE">
<![%jdcm.tate.element;[
<!ENTITY % jdcm.tate.content "(#PCDATA|%jdcm.tabset.qname;%Ruby.class;|%jdcm.emphasis.class;|%jdcm.span.qname;|%jdcm.br.qname;|%jdcm.character.class;)*">
<!ENTITY % jdcm.tate.qname "tate">
<!ENTITY % jdcm.tate.tagmin.start "-">
<!ENTITY % jdcm.tate.tagmin.end "-">
<![%sgml.tag.minimizable;[
<!ENTITY % jdcm.tate.tagmin "%jdcm.tate.tagmin.start; %jdcm.tate.tagmin.end;">
<!-- end of sgml.tag.minimizable -->]]>
<!ENTITY % jdcm.tate.tagmin "">
<!ELEMENT %jdcm.tate.qname; %jdcm.tate.tagmin; %jdcm.tate.content;>
<!-- end of jdcm.tate.element -->]]>

<!ENTITY % jdcm.tate.attlist "INCLUDE">
<![%jdcm.tate.attlist;[
<!ATTLIST %jdcm.tate.qname;
	%jdcm.subbody.attrib;
	%jdcm.common.attrib;>
<!-- end of jdcm.tate.attlist -->]]>

<!-- ruby .............................................. -->

<!ENTITY % jdcm.ruby.element "INCLUDE">
<![%jdcm.ruby.element;[
<!ENTITY % jdcm.ruby.content "((%jdcm.rbc.qname;,%jdcm.rtc.qname;,%jdcm.rtc.qname;?)|(%jdcm.rb.qname;,%jdcm.rt.qname;))">
<!ENTITY % jdcm.ruby.qname "ruby">
<!ENTITY % jdcm.ruby.tagmin.start "-">
<!ENTITY % jdcm.ruby.tagmin.end "-">
<![%sgml.tag.minimizable;[
<!ENTITY % jdcm.ruby.tagmin "%jdcm.ruby.tagmin.start; %jdcm.ruby.tagmin.end;">
<!-- end of sgml.tag.minimizable -->]]>
<!ENTITY % jdcm.ruby.tagmin "">
<!ELEMENT %jdcm.ruby.qname; %jdcm.ruby.tagmin; %jdcm.ruby.content;>
<!-- end of jdcm.ruby.element -->]]>

<!ENTITY % jdcm.ruby.attlist "INCLUDE">
<![%jdcm.ruby.attlist;[
<!ATTLIST %jdcm.ruby.qname;
	%jdcm.subbody.attrib;
	%jdcm.common.attrib;>
<!-- end of jdcm.ruby.attlist -->]]>

<!-- rbc ............................................... -->

<!ENTITY % jdcm.rbc.element "INCLUDE">
<![%jdcm.rbc.element;[
<!ENTITY % jdcm.rbc.content "(%jdcm.rb.qname;)+">
<!ENTITY % jdcm.rbc.qname "rbc">
<!ENTITY % jdcm.rbc.tagmin.start "-">
<!ENTITY % jdcm.rbc.tagmin.end "-">
<![%sgml.tag.minimizable;[
<!ENTITY % jdcm.rbc.tagmin "%jdcm.rbc.tagmin.start; %jdcm.rbc.tagmin.end;">
<!-- end of sgml.tag.minimizable -->]]>
<!ENTITY % jdcm.rbc.tagmin "">
<!ELEMENT %jdcm.rbc.qname; %jdcm.rbc.tagmin; %jdcm.rbc.content;>
<!-- end of jdcm.rbc.element -->]]>

<!ENTITY % jdcm.rbc.attlist "INCLUDE">
<![%jdcm.rbc.attlist;[
<!ATTLIST %jdcm.rbc.qname;
	%jdcm.subbody.attrib;
	%jdcm.common.attrib;>
<!-- end of jdcm.rbc.attlist -->]]>

<!-- rtc ............................................... -->

<!ENTITY % jdcm.rtc.element "INCLUDE">
<![%jdcm.rtc.element;[
<!ENTITY % jdcm.rtc.content "(%jdcm.rt.qname;)+">
<!ENTITY % jdcm.rtc.qname "rtc">
<!ENTITY % jdcm.rtc.tagmin.start "-">
<!ENTITY % jdcm.rtc.tagmin.end "-">
<![%sgml.tag.minimizable;[
<!ENTITY % jdcm.rtc.tagmin "%jdcm.rtc.tagmin.start; %jdcm.rtc.tagmin.end;">
<!-- end of sgml.tag.minimizable -->]]>
<!ENTITY % jdcm.rtc.tagmin "">
<!ELEMENT %jdcm.rtc.qname; %jdcm.rtc.tagmin; %jdcm.rtc.content;>
<!-- end of jdcm.rtc.element -->]]>

<!ENTITY % jdcm.rtc.attlist "INCLUDE">
<![%jdcm.rtc.attlist;[
<!ATTLIST %jdcm.rtc.qname;
	%jdcm.subbody.attrib;
	%jdcm.common.attrib;>
<!-- end of jdcm.rtc.attlist -->]]>

<!-- rb ................................................ -->

<!ENTITY % jdcm.rb.element "INCLUDE">
<![%jdcm.rb.element;[
<!ENTITY % jdcm.rb.content "(#PCDATA|%jdcm.inoneline.class;)*">
<!ENTITY % jdcm.rb.qname "rb">
<!ENTITY % jdcm.rb.tagmin.start "-">
<!ENTITY % jdcm.rb.tagmin.end "-">
<![%sgml.tag.minimizable;[
<!ENTITY % jdcm.rb.tagmin "%jdcm.rb.tagmin.start; %jdcm.rb.tagmin.end;">
<!-- end of sgml.tag.minimizable -->]]>
<!ENTITY % jdcm.rb.tagmin "">
<!ELEMENT %jdcm.rb.qname; %jdcm.rb.tagmin; %jdcm.rb.content;>
<!-- end of jdcm.rb.element -->]]>

<!ENTITY % jdcm.rb.attlist "INCLUDE">
<![%jdcm.rb.attlist;[
<!ATTLIST %jdcm.rb.qname;
	%jdcm.subbody.attrib;
	%jdcm.common.attrib;>
<!-- end of jdcm.rb.attlist -->]]>

<!-- rt ................................................ -->

<!ENTITY % jdcm.rt.element "INCLUDE">
<![%jdcm.rt.element;[
<!ENTITY % jdcm.rt.content "(#PCDATA|%jdcm.inoneline.class;)*">
<!ENTITY % jdcm.rt.qname "rt">
<!ENTITY % jdcm.rt.tagmin.start "-">
<!ENTITY % jdcm.rt.tagmin.end "-">
<![%sgml.tag.minimizable;[
<!ENTITY % jdcm.rt.tagmin "%jdcm.rt.tagmin.start; %jdcm.rt.tagmin.end;">
<!-- end of sgml.tag.minimizable -->]]>
<!ENTITY % jdcm.rt.tagmin "">
<!ELEMENT %jdcm.rt.qname; %jdcm.rt.tagmin; %jdcm.rt.content;>
<!-- end of jdcm.rt.element -->]]>

<!ENTITY % jdcm.rt.attlist "INCLUDE">
<![%jdcm.rt.attlist;[
<!ATTLIST %jdcm.rt.qname;
	rbspan	%jdcm.positiveinteger.datatype;	#IMPLIED
	%jdcm.subbody.attrib;
	%jdcm.common.attrib;>
<!-- end of jdcm.rt.attlist -->]]>


<!-- end of jdcm-compound.mod -->