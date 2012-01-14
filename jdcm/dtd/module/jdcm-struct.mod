<!-- ...................................................................... -->
<!-- XJDCM (Based on JIS X 4052:2000) Document Structure Module ........... -->
<!-- file: jdcm-struct.mod
     
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
     
       SYSTEM "data:,jdcm-dtd-module-jdcm-struct.mod"
     
     ...................................................................... -->

<!-- Document Structure

       body, br, div, h1, h2, h3, head, jdcm, link, p, style

     This module defines the major structural element types and
     their attributes.
-->

<!-- jdcm .............................................. -->

<!ENTITY % jdcm.jdcm.element "INCLUDE">
<![%jdcm.jdcm.element;[
<!ENTITY % jdcm.jdcm.content "(%jdcm.head.qname;,%jdcm.body.qname;)">
<!ENTITY % jdcm.jdcm.qname "jdcm">
<!ENTITY % jdcm.jdcm.tagmin.start "-">
<!ENTITY % jdcm.jdcm.tagmin.end "-">
<![%sgml.tag.minimizable;[
<!ENTITY % jdcm.jdcm.tagmin "%jdcm.jdcm.tagmin.start; %jdcm.jdcm.tagmin.end;">
<!-- end of sgml.tag.minimizable -->]]>
<!ENTITY % jdcm.jdcm.tagmin "">
<!ELEMENT %jdcm.jdcm.qname; %jdcm.jdcm.tagmin; %jdcm.jdcm.content;>
<!-- end of jdcm.jdcm.element -->]]>

<!ENTITY % jdcm.jdcm.attlist "INCLUDE">
<![%jdcm.jdcm.attlist;[
<!ATTLIST %jdcm.jdcm.qname;
	%jdcm.common.attrib;>
<!-- end of jdcm.jdcm.attlist -->]]>

<!-- body .............................................. -->

<!ENTITY % jdcm.body.element "INCLUDE">
<![%jdcm.body.element;[
<!ENTITY % jdcm.body.content "(%Block.mix;)*">
<!ENTITY % jdcm.body.qname "body">
<!ENTITY % jdcm.body.tagmin.start "-">
<!ENTITY % jdcm.body.tagmin.end "-">
<![%sgml.tag.minimizable;[
<!ENTITY % jdcm.body.tagmin "%jdcm.body.tagmin.start; %jdcm.body.tagmin.end;">
<!-- end of sgml.tag.minimizable -->]]>
<!ENTITY % jdcm.body.tagmin "">
<!ELEMENT %jdcm.body.qname; %jdcm.body.tagmin; %jdcm.body.content;>
<!-- end of jdcm.body.element -->]]>

<!ENTITY % jdcm.body.attlist "INCLUDE">
<![%jdcm.body.attlist;[
<!ATTLIST %jdcm.body.qname;
	%jdcm.subbody.attrib;
	%jdcm.common.attrib;>
<!-- end of jdcm.body.attlist -->]]>

<!-- style ............................................. -->

<!ENTITY % jdcm.style.element "INCLUDE">
<![%jdcm.style.element;[
<!ENTITY % jdcm.style.content "(#PCDATA)*">
<!ENTITY % jdcm.style.qname "style">
<!ENTITY % jdcm.style.tagmin.start "-">
<!ENTITY % jdcm.style.tagmin.end "-">
<![%sgml.tag.minimizable;[
<!ENTITY % jdcm.style.tagmin "%jdcm.style.tagmin.start; %jdcm.style.tagmin.end;">
<!-- end of sgml.tag.minimizable -->]]>
<!ENTITY % jdcm.style.tagmin "">
<!ELEMENT %jdcm.style.qname; %jdcm.style.tagmin; %jdcm.style.content;>
<!-- end of jdcm.style.element -->]]>

<!ENTITY % jdcm.style.attlist "INCLUDE">
<![%jdcm.style.attlist;[
<!ATTLIST %jdcm.style.qname;
	type	%ContentType.datatype;	#FIXED "text/jss"
	%jdcm.subsetelement.attrib;
	%jdcm.common.attrib;>
<!-- end of jdcm.style.attlist -->]]>

<!-- link .............................................. -->

<!ENTITY % jdcm.link.element "INCLUDE">
<![%jdcm.link.element;[
<!ENTITY % jdcm.link.content "EMPTY">
<!ENTITY % jdcm.link.qname "link">
<!ENTITY % jdcm.link.tagmin.start "-">
<!ENTITY % jdcm.link.tagmin.end "o">
<![%sgml.tag.minimizable;[
<!ENTITY % jdcm.link.tagmin "%jdcm.link.tagmin.start; %jdcm.link.tagmin.end;">
<!-- end of sgml.tag.minimizable -->]]>
<!ENTITY % jdcm.link.tagmin "">
<!ELEMENT %jdcm.link.qname; %jdcm.link.tagmin; %jdcm.link.content;>
<!-- end of jdcm.link.element -->]]>

<!ENTITY % jdcm.link.attlist "INCLUDE">
<![%jdcm.link.attlist;[
<!ATTLIST %jdcm.link.qname;
	href	%URI.datatype;	#REQUIRED
	rel	%jdcm.LinkType.datatype;	#REQUIRED
	type	%ContentType.datatype;	#IMPLIED
	%jdcm.subsetelement.attrib;
	%jdcm.common.attrib;>
<!-- end of jdcm.link.attlist -->]]>

<!-- head .............................................. -->

<!ENTITY % jdcm.head.element "INCLUDE">
<![%jdcm.head.element;[
<!ENTITY % jdcm.head.content "%HeadOpts.mix;">
<!ENTITY % jdcm.head.qname "head">
<!ENTITY % jdcm.head.tagmin.start "-">
<!ENTITY % jdcm.head.tagmin.end "-">
<![%sgml.tag.minimizable;[
<!ENTITY % jdcm.head.tagmin "%jdcm.head.tagmin.start; %jdcm.head.tagmin.end;">
<!-- end of sgml.tag.minimizable -->]]>
<!ENTITY % jdcm.head.tagmin "">
<!ELEMENT %jdcm.head.qname; %jdcm.head.tagmin; %jdcm.head.content;>
<!-- end of jdcm.head.element -->]]>

<!ENTITY % jdcm.head.attlist "INCLUDE">
<![%jdcm.head.attlist;[
<!ATTLIST %jdcm.head.qname;
	%jdcm.subsetelement.attrib;
	%jdcm.common.attrib;>
<!-- end of jdcm.head.attlist -->]]>

<!-- p ................................................. -->

<!ENTITY % jdcm.p.element "INCLUDE">
<![%jdcm.p.element;[
<!ENTITY % jdcm.p.content "(#PCDATA|%Inline.mix;|%jdcm.zu.qname;)*">
<!ENTITY % jdcm.p.qname "p">
<!ENTITY % jdcm.p.tagmin.start "-">
<!ENTITY % jdcm.p.tagmin.end "-">
<![%sgml.tag.minimizable;[
<!ENTITY % jdcm.p.tagmin "%jdcm.p.tagmin.start; %jdcm.p.tagmin.end;">
<!-- end of sgml.tag.minimizable -->]]>
<!ENTITY % jdcm.p.tagmin "">
<!ELEMENT %jdcm.p.qname; %jdcm.p.tagmin; %jdcm.p.content;>
<!-- end of jdcm.p.element -->]]>

<!ENTITY % jdcm.p.attlist "INCLUDE">
<![%jdcm.p.attlist;[
<!ATTLIST %jdcm.p.qname;
	%jdcm.subbody.attrib;
	%jdcm.common.attrib;>
<!-- end of jdcm.p.attlist -->]]>

<!-- div ............................................... -->

<!ENTITY % jdcm.div.element "INCLUDE">
<![%jdcm.div.element;[
<!ENTITY % jdcm.div.content "(#PCDATA|%Flow.mix;)*">
<!ENTITY % jdcm.div.qname "div">
<!ENTITY % jdcm.div.tagmin.start "-">
<!ENTITY % jdcm.div.tagmin.end "-">
<![%sgml.tag.minimizable;[
<!ENTITY % jdcm.div.tagmin "%jdcm.div.tagmin.start; %jdcm.div.tagmin.end;">
<!-- end of sgml.tag.minimizable -->]]>
<!ENTITY % jdcm.div.tagmin "">
<!ELEMENT %jdcm.div.qname; %jdcm.div.tagmin; %jdcm.div.content;>
<!-- end of jdcm.div.element -->]]>

<!ENTITY % jdcm.div.attlist "INCLUDE">
<![%jdcm.div.attlist;[
<!ATTLIST %jdcm.div.qname;
	%jdcm.subbody.attrib;
	%jdcm.common.attrib;>
<!-- end of jdcm.div.attlist -->]]>

<!-- br ................................................ -->

<!ENTITY % jdcm.br.element "INCLUDE">
<![%jdcm.br.element;[
<!ENTITY % jdcm.br.content "EMPTY">
<!ENTITY % jdcm.br.qname "br">
<!ENTITY % jdcm.br.tagmin.start "-">
<!ENTITY % jdcm.br.tagmin.end "o">
<![%sgml.tag.minimizable;[
<!ENTITY % jdcm.br.tagmin "%jdcm.br.tagmin.start; %jdcm.br.tagmin.end;">
<!-- end of sgml.tag.minimizable -->]]>
<!ENTITY % jdcm.br.tagmin "">
<!ELEMENT %jdcm.br.qname; %jdcm.br.tagmin; %jdcm.br.content;>
<!-- end of jdcm.br.element -->]]>

<!ENTITY % jdcm.br.attlist "INCLUDE">
<![%jdcm.br.attlist;[
<!ATTLIST %jdcm.br.qname;
	%jdcm.subbody.attrib;
	%jdcm.common.attrib;>
<!-- end of jdcm.br.attlist -->]]>

<!ENTITY % jdcm.hn.content "(#PCDATA|%Inline.mix;)*">
<!-- h1 ................................................ -->

<!ENTITY % jdcm.h1.element "INCLUDE">
<![%jdcm.h1.element;[
<!ENTITY % jdcm.h1.content "%jdcm.hn.content;">
<!ENTITY % jdcm.h1.qname "h1">
<!ENTITY % jdcm.h1.tagmin.start "-">
<!ENTITY % jdcm.h1.tagmin.end "-">
<![%sgml.tag.minimizable;[
<!ENTITY % jdcm.h1.tagmin "%jdcm.h1.tagmin.start; %jdcm.h1.tagmin.end;">
<!-- end of sgml.tag.minimizable -->]]>
<!ENTITY % jdcm.h1.tagmin "">
<!ELEMENT %jdcm.h1.qname; %jdcm.h1.tagmin; %jdcm.h1.content;>
<!-- end of jdcm.h1.element -->]]>

<!ENTITY % jdcm.h1.attlist "INCLUDE">
<![%jdcm.h1.attlist;[
<!ATTLIST %jdcm.h1.qname;
	%jdcm.hn.attrib;
	%jdcm.common.attrib;>
<!-- end of jdcm.h1.attlist -->]]>

<!-- h2 ................................................ -->

<!ENTITY % jdcm.h2.element "INCLUDE">
<![%jdcm.h2.element;[
<!ENTITY % jdcm.h2.content "%jdcm.hn.content;">
<!ENTITY % jdcm.h2.qname "h2">
<!ENTITY % jdcm.h2.tagmin.start "-">
<!ENTITY % jdcm.h2.tagmin.end "-">
<![%sgml.tag.minimizable;[
<!ENTITY % jdcm.h2.tagmin "%jdcm.h2.tagmin.start; %jdcm.h2.tagmin.end;">
<!-- end of sgml.tag.minimizable -->]]>
<!ENTITY % jdcm.h2.tagmin "">
<!ELEMENT %jdcm.h2.qname; %jdcm.h2.tagmin; %jdcm.h2.content;>
<!-- end of jdcm.h2.element -->]]>

<!ENTITY % jdcm.h2.attlist "INCLUDE">
<![%jdcm.h2.attlist;[
<!ATTLIST %jdcm.h2.qname;
	%jdcm.hn.attrib;
	%jdcm.common.attrib;>
<!-- end of jdcm.h2.attlist -->]]>

<!-- h3 ................................................ -->

<!ENTITY % jdcm.h3.element "INCLUDE">
<![%jdcm.h3.element;[
<!ENTITY % jdcm.h3.content "%jdcm.hn.content;">
<!ENTITY % jdcm.h3.qname "h3">
<!ENTITY % jdcm.h3.tagmin.start "-">
<!ENTITY % jdcm.h3.tagmin.end "-">
<![%sgml.tag.minimizable;[
<!ENTITY % jdcm.h3.tagmin "%jdcm.h3.tagmin.start; %jdcm.h3.tagmin.end;">
<!-- end of sgml.tag.minimizable -->]]>
<!ENTITY % jdcm.h3.tagmin "">
<!ELEMENT %jdcm.h3.qname; %jdcm.h3.tagmin; %jdcm.h3.content;>
<!-- end of jdcm.h3.element -->]]>

<!ENTITY % jdcm.h3.attlist "INCLUDE">
<![%jdcm.h3.attlist;[
<!ATTLIST %jdcm.h3.qname;
	%jdcm.hn.attrib;
	%jdcm.common.attrib;>
<!-- end of jdcm.h3.attlist -->]]>


<!-- end of jdcm-struct.mod -->