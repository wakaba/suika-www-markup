<?xml version="1.0" encoding="iso-2022-jp"?>
<!-- Hypertext Markup Language 3.0 (draft 00) : QName module
     
     Copyright 2003 Wakaba <w@suika.fam.cx>.
     Revision: $Date: 2003/09/17 23:57:40 $
     
     SYSTEM "http://suika.fam.cx/gate/cvs/*checkout*/markup/html/dtd/html30-00-qname.mod"
  -->

<!ENTITY % NS.prefixed "INCLUDE">
<!ENTITY % html30-00.prefixed "%NS.prefixed;">
<!ENTITY % html30-00.xmlns "urn:x-suika-fam-cx:markup:ietf:html:3:draft:00:">
<!ENTITY % html30-00.prefix "ja">
<![%html30-00.prefixed;[
<!ENTITY % html30-00.pfx "%html30-00.prefix;:">
]]>
<!ENTITY % html30-00.pfx "">
<!ENTITY % html30-00.xmlns.extra.attrib "">

<![%html30-00.prefixed;[
<!ENTITY % html30-00.xmlns.decl.attrib
	"xmlns:%html30-00.prefix;	%URI.datatype;	#FIXED '%html30-00.xmlns;'">
]]>
<!ENTITY % html30-00.xmlns.decl.attrib
	"xmlns	%URI.datatype;	#FIXED '%html30-00.xmlns;'">

<![%html30-00.prefixed;[
<!ENTITY % NS.decl.attrib
	"%html30-00.xmlns.decl.attrib;
	%html30-00.xmlns.extra.attrib;">
]]>
<!ENTITY % NS.decl.attrib
	"%html30-00.xmlns.extra.attrib;">

<![%html30-00.prefixed;[
<!ENTITY % html30-00.xmlns.attrib
	"%NS.decl.attrib;">
]]>
<!ENTITY % html30-00.xmlns.attrib
	"%html30-00.xmlns.decl.attrib;
	%NS.decl.attrib;">

<!ENTITY % html30-00.note.qname "%html30-00.pfx;note">

<!ENTITY % html30-00.urn.urn.qname "%html30-00.prefix;:urn">

<!-- end of html30-00-qname.mod -->
