<?xml version="1.0" encoding="iso-2022-jp"?>
<!-- XHTML Basic au additions : Common attributes module
     
     Copyright 2003 Wakaba <w@suika.fam.cx>.
     Revision: $Date: 2003/10/01 01:28:37 $
     
     SYSTEM "http://suika.fam.cx/gate/cvs/*checkout*/markup/html/dtd/xhtml-basic-au-attribs.mod"
  -->

<!-- (img | object)/@copyright
     Permission to save embeded data
     <http://www.au.kddi.com/ezfactory/tec/spec/wap_tag1.html#tag4> -->
<!ENTITY % xhtmlau.copyright.attrib
	'%xhtmlau.copyright.attrib.qname;	(yes|no)	"no"'>

<!-- input/@emptyok
     Allowance of empty value
     <http://www.au.kddi.com/ezfactory/tec/spec/wap_tag1.html#tag2> -->
<!ENTITY % xhtmlau.emptyok.attrib
	'%xhtmlau.emptyok.attrib.qname;	(true|false)	#IMPLIED'>

<!-- (input | textarea)/@format
     Input format specification
     <http://www.au.kddi.com/ezfactory/tec/spec/wap_tag1.html#tag2> -->
<!ENTITY % xhtmlau.format.attrib
	'%xhtmlau.format.attrib.qname;	%xhtmlau.format.datatype;	#IMPLIED'>

<!-- (input | textarea)/@istyle
     Input format specification
     <http://www.au.kddi.com/ezfactory/tec/spec/wap_tag1.html#tag3> -->
<!ENTITY % xhtmlau.istyle.attrib
	'%xhtmlau.istyle.attrib.qname;	%xhtmlau.istyle.datatype;	#IMPLIED'>

<!-- img/@localsrc
     Built-in icon name
     <http://www.au.kddi.com/ezfactory/tec/spec/wap_tag2.html#tag2> -->
<!ENTITY % xhtmlau.localsrc.attrib
	'%xhtmlau.localsrc.attrib.qname;	%xhtmlau.iconname.datatype;	#IMPLIED'>

<!-- bgsound/@loop -->
<!ENTITY % xhtmlau.loop.attrib
	'loop	%xhtmlau.loop.datatype;	#IMPLIED'>

<!-- img/@src -->
<!ENTITY % xhtmlau.src.attrib
	'%xhtmlau.src.attrib.qname;	%URI.datatype;	#IMPLIED'>

<!-- bgsound/@src -->
<!ENTITY % xhtmlau.bgsound.src.attrib
	'%xhtmlau.src.attrib.qname;	%URI.datatype;	#REQUIRED'>

<!ENTITY % xhtmlau.common.extra.attrib "">

<!ENTITY % xhtmlau.html.common.attrib
	"">

<!ENTITY % xhtmlau.common.attrib
	"%xhtmlau.html.common.attrib;">

<!-- end of xhtml-basic-au-attribs.mod -->
