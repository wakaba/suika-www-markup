<?xml version="1.0" encoding="iso-2022-jp"?>
<!-- XHTML Basic au additions module
     
     Copyright 2003 Wakaba <w@suika.fam.cx>.
     Revision: $Date: 2003/10/01 01:28:37 $
     
     SYSTEM "http://suika.fam.cx/gate/cvs/*checkout*/markup/html/dtd/xhtml-basic-au.mod"
  -->

<!ENTITY % xhtmlau.bgsound.element "INCLUDE">
<![%xhtmlau.bgsound.element;[
<!ENTITY % xhtmlau.bgsound.content "EMPTY">
<!ELEMENT %xhtmlau.bgsound.qname; %xhtmlau.bgsound.content;>
]]>
<!ENTITY % xhtmlau.bgsound.attlist "INCLUDE">
<![%xhtmlau.bgsound.attlist;[
<!ATTLIST %xhtmlau.bgsound.qname;
	%xhtmlau.bgsound.src.attrib;
	%xhtmlau.loop.attrib;
	%xhtmlau.common.attrib;>
]]>

<!ENTITY % xhtmlau.blink.element "INCLUDE">
<![%xhtmlau.blink.element;[
<!ENTITY % xhtmlau.blink.content "(#PCDATA|%Inline.mix;)*">
<!ELEMENT %xhtmlau.blink.qname; %xhtmlau.blink.content;>
]]>
<!ENTITY % xhtmlau.blink.attlist "INCLUDE">
<![%xhtmlau.blink.attlist;[
<!ATTLIST %xhtmlau.blink.qname;
	%xhtmlau.common.attrib;>
]]>

<!ENTITY % xhtmlau.plaintext.element "INCLUDE">
<![%xhtmlau.plaintext.element;[
<!ENTITY % xhtmlau.plaintext.content "(#PCDATA)*">
<!ELEMENT %xhtmlau.plaintext.qname; %xhtmlau.plaintext.content;>
]]>
<!ENTITY % xhtmlau.plaintext.attlist "INCLUDE">
<![%xhtmlau.plaintext.attlist;[
<!ATTLIST %xhtmlau.plaintext.qname;
	%xhtmlau.common.attrib;>
]]>

<![%xhtmlau.input.attlist;[
<!ATTLIST %xhtmlau.input.qname;
	%xhtmlau.emptyok.attrib;
	%xhtmlau.format.attrib;
	%xhtmlau.istyle.attrib;
	%xhtmlau.html.common.attrib;>
]]>

<![%xhtmlau.textarea.attlist;[
<!ATTLIST %xhtmlau.textarea.qname;
	%xhtmlau.format.attrib;
	%xhtmlau.istyle.attrib;
	%xhtmlau.html.common.attrib;>
<!--	%xhtmlau.emptyok.attrib; ?? -->
]]>

<![%xhtmlau.img.attlist;[
<!ATTLIST %xhtmlau.img.qname;
	%xhtmlau.copyright.attrib;
	%xhtmlau.localsrc.attrib;
	%xhtmlau.src.attrib;
	%xhtmlau.html.common.attrib;>
]]>

<![%xhtmlau.object.attlist;[
<!ATTLIST %xhtmlau.object.qname;
	%xhtmlau.copyright.attrib;
	%xhtmlau.html.common.attrib;>
]]>

<!-- end of xhtml-basic-au.mod -->
