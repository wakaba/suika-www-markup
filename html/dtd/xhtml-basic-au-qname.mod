<?xml version="1.0" encoding="iso-2022-jp"?>
<!-- XHTML Basic au additions : QName module
     
     Copyright 2003 Wakaba <w@suika.fam.cx>.
     Revision: $Date: 2003/10/01 01:28:37 $
     
     SYSTEM "http://suika.fam.cx/gate/cvs/*checkout*/markup/html/dtd/xhtml-basic-au-qname.mod"
  -->

<!ENTITY % NS.prefixed "INCLUDE">
<!ENTITY % xhtmlau.prefixed "%NS.prefixed;">
<!ENTITY % xhtmlau.attrib.prefixed "%xhtmlau.prefixed;">
<!ENTITY % xhtmlau.xmlns "http://www.w3.org/1999/xhtml">
<!ENTITY % xhtmlau.prefix "au">
<!ENTITY % xhtmlau.attrib.prefix "%xhtmlau.prefix;">
<![%xhtmlau.prefixed;[
<!ENTITY % xhtmlau.pfx "%xhtmlau.prefix;:">
]]>
<!ENTITY % xhtmlau.pfx "">
<![%xhtmlau.attrib.prefixed;[
<!ENTITY % xhtmlau.attrib.pfx "%xhtmlau.attrib.prefix;:">
]]>
<!ENTITY % xhtmlau.attrib.pfx "">
<!ENTITY % xhtmlau.xmlns.extra.attrib "">

<![%xhtmlau.prefixed;[
<![%xhtmlau.attrib.prefixed;[
<!ENTITY % xhtmlau.xmlns.decl.attrib
	"xmlns:%xhtmlau.prefix;	%URI.datatype;	#FIXED '%xhtmlau.xmlns;'
	xmlns:%xhtmlau.attrib.prefix;	%URI.datatype;	#FIXED '%xhtmlau.xmlns;'">
]]>
<!ENTITY % xhtmlau.xmlns.decl.attrib
	"xmlns:%xhtmlau.prefix;	%URI.datatype;	#FIXED '%xhtmlau.xmlns;'">
]]>
<![%xhtmlau.attrib.prefixed;[
<!ENTITY % xhtmlau.xmlns.decl.attrib
	"xmlns	%URI.datatype;	#FIXED '%xhtmlau.xmlns;'
	xmlns:%xhtmlau.attrib.prefix;	%URI.datatype;	#FIXED '%xhtmlau.xmlns;'">
]]>
<!ENTITY % xhtmlau.xmlns.decl.attrib
	"xmlns	%URI.datatype;	#FIXED '%xhtmlau.xmlns;'">

<![%xhtmlau.prefixed;[
<!ENTITY % NS.decl.attrib
	"%xhtmlau.xmlns.decl.attrib;
	%xhtmlau.xmlns.extra.attrib;">
]]>
<!ENTITY % NS.decl.attrib
	"%xhtmlau.xmlns.extra.attrib;">

<![%xhtmlau.prefixed;[
<!ENTITY % xhtmlau.xmlns.attrib
	"%NS.decl.attrib;">
]]>
<!ENTITY % xhtmlau.xmlns.attrib
	"%xhtmlau.xmlns.decl.attrib;
	%NS.decl.attrib;">

<!ENTITY % xhtmlau.img.qname "%xhtmlau.pfx;img">
<!ENTITY % xhtmlau.input.qname "%xhtmlau.pfx;input">
<!ENTITY % xhtmlau.object.qname "%xhtmlau.pfx;object">
<!ENTITY % xhtmlau.textarea.qname "%xhtmlau.pfx;textarea">

<!ENTITY % xhtmlau.bgsound.qname "%xhtmlau.pfx;bgsound">
<!ENTITY % xhtmlau.blink.qname "%xhtmlau.pfx;blink">
<!ENTITY % xhtmlau.plaintext.qname "%xhtmlau.pfx;plaintext">

<!ENTITY % xhtmlau.copyright.attrib.qname "%xhtmlau.attrib.pfx;copyright">
<!ENTITY % xhtmlau.emptyok.attrib.qname "%xhtmlau.attrib.pfx;emptyok">
<!ENTITY % xhtmlau.format.attrib.qname "%xhtmlau.attrib.pfx;format">
<!ENTITY % xhtmlau.istyle.attrib.qname "%xhtmlau.attrib.pfx;istyle">
<!ENTITY % xhtmlau.localsrc.attrib.qname "%xhtmlau.attrib.pfx;localsrc">
<!ENTITY % xhtmlau.loop.attrib.qname "%xhtmlau.attrib.pfx;loop">
<!ENTITY % xhtmlau.src.attrib.qname "%xhtmlau.attrib.pfx;src">

<!-- end of xhtml-basic-au-qname.mod -->
