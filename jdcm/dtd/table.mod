<?xml version="1.0" encoding="iso-2022-jp"?>
<!-- XML Representation of
     "Exchange format for Japanese documents with composition markup
     (JIS X 4052:2000)"
     
     Table module
     
     Copyright 2003 Wakaba <w@suika.fam.cx>.
     Revision: $Date: 2003/09/11 08:15:42 $
     
     SYSTEM "http://suika.fam.cx/gate/cvs/*checkout*/markup/jdcm/dtd/table.mod"
  -->

<!-- table -->

<!ENTITY % jdcm.align.attrib "align	(行頭|行末|center|均等)	'行頭'">
<!ENTITY % jdcm.cellpadding.attrib "cellpadding	%jdcm.tablelength.datatype;	#IMPLIED">
<!ENTITY % jdcm.行そろえ.attrib "行そろえ	(こま頭|こま中央|こま末|行均等)	'こま中央'">

<!ENTITY % jdcm.td.attrib
	'%jdcm.align.attrib;
	%jdcm.cellpadding.attrib;
	height	%jdcm.tablelength.datatype;	#IMPLIED
	width	%jdcm.tablelength.datatype;	#IMPLIED
	行こま合成	%jdcm.positiveinteger.datatype;	"1"
	%jdcm.行そろえ.attrib;
	列こま合成	%jdcm.positiveinteger.datatype;	"1"
	%jdcm.subbody.attrib;'>

<!ENTITY % jdcm.th.element "INCLUDE">
<!ENTITY % jdcm.th.content "(#PCDATA|%jdcm.semiflow.mix;)*">
<![%jdcm.th.element;[
<!ELEMENT %jdcm.th.qname; %jdcm.th.content;>
]]>
<!ENTITY % jdcm.th.attlist "INCLUDE">
<![%jdcm.th.attlist;[
<!ATTLIST %jdcm.th.qname;
	%jdcm.td.attrib;>
]]>

<!ENTITY % jdcm.td.element "INCLUDE">
<!ENTITY % jdcm.td.content "(#PCDATA|%jdcm.semiflow.mix;)*">
<![%jdcm.td.element;[
<!ELEMENT %jdcm.td.qname; %jdcm.td.content;>
]]>
<!ENTITY % jdcm.td.attlist "INCLUDE">
<![%jdcm.td.attlist;[
<!ATTLIST %jdcm.td.qname;
	%jdcm.td.attrib;>
]]>

<!ENTITY % jdcm.tr.element "INCLUDE">
<![%jdcm.tr.element;[
<!ENTITY % jdcm.tr.content "(%jdcm.th.qname;|%jdcm.td.qname;)+">
<!ELEMENT %jdcm.tr.qname; %jdcm.tr.content;>
]]>
<!ENTITY % jdcm.tr.attlist "INCLUDE">
<![%jdcm.tr.attlist;[
<!ATTLIST %jdcm.tr.qname;
	%jdcm.align.attrib;
	%jdcm.cellpadding.attrib;
	%jdcm.行そろえ.attrib;
	%jdcm.subbody.attrib;>
]]>


<!ENTITY % jdcm.table.element "INCLUDE">
<![%jdcm.table.element;[
<!ENTITY % jdcm.table.content "(%jdcm.tr.qname;)+">
<!ELEMENT %jdcm.table.qname; %jdcm.table.content;>
]]>
<!ENTITY % jdcm.table.attlist "INCLUDE">
<![%jdcm.table.attlist;[
<!ATTLIST %jdcm.table.qname;
	border	CDATA	"表けい"
	%jdcm.cellpadding.attrib;
	frame	(void|行頭|行末|行頭行末|前|後|前後|box)	"box"
	height	%jdcm.tablelengthnozero.datatype;	#IMPLIED
	rules	(なし|行間|列間|行列間)	"行列間"
	width	%jdcm.tablelengthnozero.datatype;	#IMPLIED
	%jdcm.subbody.attrib;>
<!--
	border	(表けい|中細けい|裏けい|<borderlength>)	表けい
	height : applied to vertical table
	width : applied to horizontal table -->
]]>

<!-- tabset -->

<!ENTITY % jdcm.tab.element "INCLUDE">
<![%jdcm.tab.element;[
<!ENTITY % jdcm.tab.content "EMPTY">
<!ELEMENT %jdcm.tab.qname; %jdcm.tab.content;>
]]>
<!ENTITY % jdcm.tab.attlist "INCLUDE">
<![%jdcm.tab.attlist;[
<!ATTLIST %jdcm.tab.qname;
	%jdcm.subbody.attrib;>
]]>

<!ENTITY % jdcm.tabset.element "INCLUDE">
<![%jdcm.tabset.element;[
<!ENTITY % jdcm.tabset.content "(#PCDATA|%jdcm.tab.qname;|%jdcm.ruby.qname;|%jdcm.sup.qname;|%jdcm.sub.qname;|%jdcm.em.class;|%jdcm.yoko.qname;|%jdcm.tate.qname;|%jdcm.span.qname;|%jdcm.ch.qname;|%jdcm.br.qname;)*">
<!ELEMENT %jdcm.tabset.qname; %jdcm.tabset.content;>
	<!-- br cannot be here by definition of content model table,
	     but example in [JIS X 4052:2000, 6.11] includes br as a child of tabset. -->
]]>
<!ENTITY % jdcm.tabset.attlist "INCLUDE">
<![%jdcm.tabset.attlist;[
<!ATTLIST %jdcm.tabset.qname;
	char	%jdcm.characters.datatype;	#REQUIRED
	タブ位置	%jdcm.tablelengths.datatype;	#REQUIRED
	タブ種	CDATA	#IMPLIED
	%jdcm.subbody.attrib;>
<!-- tabType *(WSP tabType)
     tabType := (左|上|右|下|中央|指定文字)
     Default : vertical : 左, horizontal : 上 -->
]]>


<!-- end of table.mod -->
