<?xml version="1.0" encoding="iso-2022-jp"?>
<!-- XML Representation of
     "Exchange format for Japanese documents with composition markup
     (JIS X 4052:2000)"
     
     Common Attributes module
     
     Copyright 2003 Wakaba <w@suika.fam.cx>.
     Revision: $Date: 2003/09/11 08:15:42 $
     
     SYSTEM "http://suika.fam.cx/gate/cvs/*checkout*/markup/jdcm/dtd/attribs.mod"
  -->

<!-- Attributes which all elements have -->

<!-- placefolder for extension -->
<!ENTITY % jdcm.core.extra.attrib "">

<!ENTITY % jdcm.core.attrib
	"%jdcm.xmlns.attrib;
	%jdcm.core.extra.attrib;">

<!-- Attributes for "文書中の要素の部分集合要素" -->
<!ENTITY % jdcm.subsetelement.attrib
	"class	CDATA	#IMPLIED
	id	ID	#IMPLIED
	%jdcm.core.attrib;">

<!-- Attributes for body and its subset elements -->
<!ENTITY % jdcm.subbody.attrib
	"%jdcm.subsetelement.attrib;
	style	%jdcm.style.datatype;	#IMPLIED">

<!-- end of attribs.mod -->
