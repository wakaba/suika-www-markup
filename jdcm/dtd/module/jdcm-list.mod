<!-- ...................................................................... -->
<!-- XJDCM (Based on JIS X 4052:2000) Listing Module ...................... -->
<!-- file: jdcm-list.mod
     
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
     
       SYSTEM "data:,jdcm-dtd-module-jdcm-list.mod"
     
     ...................................................................... -->

<!-- Listing

       dd, dl, dt, li, ol, ul

     This module declares the list-oriented element types
     and their attributes.
-->

<!-- dt ................................................ -->

<!ENTITY % jdcm.dt.element "INCLUDE">
<![%jdcm.dt.element;[
<!ENTITY % jdcm.dt.content "(#PCDATA|%Inline.mix;)*">
<!ENTITY % jdcm.dt.qname "dt">
<!ENTITY % jdcm.dt.tagmin.start "-">
<!ENTITY % jdcm.dt.tagmin.end "-">
<![%sgml.tag.minimizable;[
<!ENTITY % jdcm.dt.tagmin "%jdcm.dt.tagmin.start; %jdcm.dt.tagmin.end;">
<!-- end of sgml.tag.minimizable -->]]>
<!ENTITY % jdcm.dt.tagmin "">
<!ELEMENT %jdcm.dt.qname; %jdcm.dt.tagmin; %jdcm.dt.content;>
<!-- end of jdcm.dt.element -->]]>

<!ENTITY % jdcm.dt.attlist "INCLUDE">
<![%jdcm.dt.attlist;[
<!ATTLIST %jdcm.dt.qname;
	%jdcm.subbody.attrib;
	%jdcm.common.attrib;>
<!-- end of jdcm.dt.attlist -->]]>

<!-- dd ................................................ -->

<!ENTITY % jdcm.dd.element "INCLUDE">
<![%jdcm.dd.element;[
<!ENTITY % jdcm.dd.content "(#PCDATA|%jdcm.semiflow.mix;)*">
<!ENTITY % jdcm.dd.qname "dd">
<!ENTITY % jdcm.dd.tagmin.start "-">
<!ENTITY % jdcm.dd.tagmin.end "-">
<![%sgml.tag.minimizable;[
<!ENTITY % jdcm.dd.tagmin "%jdcm.dd.tagmin.start; %jdcm.dd.tagmin.end;">
<!-- end of sgml.tag.minimizable -->]]>
<!ENTITY % jdcm.dd.tagmin "">
<!ELEMENT %jdcm.dd.qname; %jdcm.dd.tagmin; %jdcm.dd.content;>
<!-- end of jdcm.dd.element -->]]>

<!ENTITY % jdcm.dd.attlist "INCLUDE">
<![%jdcm.dd.attlist;[
<!ATTLIST %jdcm.dd.qname;
	%jdcm.subbody.attrib;
	%jdcm.common.attrib;>
<!-- end of jdcm.dd.attlist -->]]>

<!-- dl ................................................ -->

<!ENTITY % jdcm.dl.element "INCLUDE">
<![%jdcm.dl.element;[
<!ENTITY % jdcm.dl.content "(%jdcm.dt.qname;|%jdcm.dd.qname;)*">
<!ENTITY % jdcm.dl.qname "dl">
<!ENTITY % jdcm.dl.tagmin.start "-">
<!ENTITY % jdcm.dl.tagmin.end "-">
<![%sgml.tag.minimizable;[
<!ENTITY % jdcm.dl.tagmin "%jdcm.dl.tagmin.start; %jdcm.dl.tagmin.end;">
<!-- end of sgml.tag.minimizable -->]]>
<!ENTITY % jdcm.dl.tagmin "">
<!ELEMENT %jdcm.dl.qname; %jdcm.dl.tagmin; %jdcm.dl.content;>
<!-- end of jdcm.dl.element -->]]>

<!ENTITY % jdcm.dl.attlist "INCLUDE">
<![%jdcm.dl.attlist;[
<!ATTLIST %jdcm.dl.qname;
	%jdcm.subbody.attrib;
	%jdcm.common.attrib;>
<!-- end of jdcm.dl.attlist -->]]>

<!-- li ................................................ -->

<!ENTITY % jdcm.li.element "INCLUDE">
<![%jdcm.li.element;[
<!ENTITY % jdcm.li.content "(#PCDATA|%jdcm.semiflow.mix;)*">
<!ENTITY % jdcm.li.qname "li">
<!ENTITY % jdcm.li.tagmin.start "-">
<!ENTITY % jdcm.li.tagmin.end "-">
<![%sgml.tag.minimizable;[
<!ENTITY % jdcm.li.tagmin "%jdcm.li.tagmin.start; %jdcm.li.tagmin.end;">
<!-- end of sgml.tag.minimizable -->]]>
<!ENTITY % jdcm.li.tagmin "">
<!ELEMENT %jdcm.li.qname; %jdcm.li.tagmin; %jdcm.li.content;>
<!-- end of jdcm.li.element -->]]>

<!ENTITY % jdcm.li.attlist "INCLUDE">
<![%jdcm.li.attlist;[
<!ATTLIST %jdcm.li.qname;
	%jdcm.subbody.attrib;
	%jdcm.common.attrib;>
<!-- end of jdcm.li.attlist -->]]>

<!-- ol ................................................ -->

<!ENTITY % jdcm.ol.element "INCLUDE">
<![%jdcm.ol.element;[
<!ENTITY % jdcm.ol.content "(%jdcm.li.qname;)*">
<!ENTITY % jdcm.ol.qname "ol">
<!ENTITY % jdcm.ol.tagmin.start "-">
<!ENTITY % jdcm.ol.tagmin.end "-">
<![%sgml.tag.minimizable;[
<!ENTITY % jdcm.ol.tagmin "%jdcm.ol.tagmin.start; %jdcm.ol.tagmin.end;">
<!-- end of sgml.tag.minimizable -->]]>
<!ENTITY % jdcm.ol.tagmin "">
<!ELEMENT %jdcm.ol.qname; %jdcm.ol.tagmin; %jdcm.ol.content;>
<!-- end of jdcm.ol.element -->]]>

<!ENTITY % jdcm.ol.attlist "INCLUDE">
<![%jdcm.ol.attlist;[
<!ATTLIST %jdcm.ol.qname;
	%jdcm.subbody.attrib;
	%jdcm.common.attrib;>
<!-- end of jdcm.ol.attlist -->]]>

<!-- ul ................................................ -->

<!ENTITY % jdcm.ul.element "INCLUDE">
<![%jdcm.ul.element;[
<!ENTITY % jdcm.ul.content "(%jdcm.li.qname;)*">
<!ENTITY % jdcm.ul.qname "ul">
<!ENTITY % jdcm.ul.tagmin.start "-">
<!ENTITY % jdcm.ul.tagmin.end "-">
<![%sgml.tag.minimizable;[
<!ENTITY % jdcm.ul.tagmin "%jdcm.ul.tagmin.start; %jdcm.ul.tagmin.end;">
<!-- end of sgml.tag.minimizable -->]]>
<!ENTITY % jdcm.ul.tagmin "">
<!ELEMENT %jdcm.ul.qname; %jdcm.ul.tagmin; %jdcm.ul.content;>
<!-- end of jdcm.ul.element -->]]>

<!ENTITY % jdcm.ul.attlist "INCLUDE">
<![%jdcm.ul.attlist;[
<!ATTLIST %jdcm.ul.qname;
	%jdcm.subbody.attrib;
	%jdcm.common.attrib;>
<!-- end of jdcm.ul.attlist -->]]>


<!-- end of jdcm-list.mod -->
