<?xml version="1.0" encoding="iso-2022-jp"?>
<!-- Hypertext Markup Language 3.0 (draft 00) : Common attributes module
     
     Copyright 2003 Wakaba <w@suika.fam.cx>.
     Revision: $Date: 2003/09/17 23:57:40 $
     
     SYSTEM "http://suika.fam.cx/gate/cvs/*checkout*/markup/html/dtd/html30-00-attribs.mod"
  -->

<!ENTITY % html30-00.common.extra.attrib "">

<!ENTITY % html30-00.common.attrib
	"xml:base	%URI.datatype;	#IMPLIED
	xml:lang	%LanguageCode.datatype;	#IMPLIED
	xml:space	(default|preserve)	#IMPLIED">

<!ENTITY % html30-00.class.attrib
	"class	%html30-00.classes.datatype;	#IMPLIED">

<!ENTITY % html30-00.id.attrib
	"id	ID	#IMPLIED">

<!ENTITY % html30-00.lang.default '"en.us"'>
<!ENTITY % html30-00.lang.attrib
	"lang	%html30-00.LanguageCode.datatype;	%html30-00.lang.default;">

<!ENTITY % html30-00.src.attrib
	"src	%URI.datatype;	#IMPLIED">

<!ENTITY % html30-00.attrs.attrib
	"%html30-00.id.attrib;
	%html30-00.lang.attrib;
	%html30-00.class.attrib;">

<!-- %needs : Attributes for controlling text flow -->
<!ENTITY % html30-00.needs.attrib
	"clear	%html30-00.clear.datatype;	#IMPLIED">

<!-- %url.link : Attributes associated with URL based links -->
<!ENTITY % html30-00.url.link.attrib
	"md	%html30-00.md5.datatype;	#IMPLIED">

<!-- end of html30-00-attribs.mod -->
