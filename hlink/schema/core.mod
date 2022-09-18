<?xml version="1.0" encoding="iso-2022-jp"?>
<!-- HLink : Core elements module
     
     Copyright 2003 Wakaba <wakaba@suikawiki.prg>.
     Revision: $Date: 2003/09/13 09:45:04 $

     R4.9.18  URLs updated.
     
     SYSTEM "https://suika.suikawiki.org/gate/cvs/*checkout*/markup/hlink/schama/core.mod"
  -->

<!ENTITY % HLINK.hlinks.element "INCLUDE">
<![%HLINK.hlinks.element;[
<!ENTITY % HLINK.hlinks.content "(%HLINK.hlink.qname;)+">
<!ELEMENT %HLINK.hlinks.qname; %HLINK.hlinks.content;>
]]>
<!ENTITY % HLINK.hlinks.attlist "INCLUDE">
<![%HLINK.hlinks.attlist;[
<!ATTLIST %HLINK.hlinks.qname;
	%HLINK.common.attrib;>
]]>

<!ENTITY % HLINK.hlink.element "INCLUDE">
<![%HLINK.hlink.element;[
<!ENTITY % HLINK.hlink.content "EMPTY">
<!ELEMENT %HLINK.hlink.qname; %HLINK.hlink.content;>
]]>
<!ENTITY % HLINK.hlink.attlist "INCLUDE">
<![%HLINK.hlink.attlist;[
<!ATTLIST %HLINK.hlink.qname;
	namespace	%URI.datatype;	#REQUIRED
	element	NMTOKEN	#IMPLIED
	locator	CDATA	#IMPLIED
	effect	CDATA	#IMPLIED
	actuate	CDATA	#IMPLIED
	replacement	 CDATA	#IMPLIED
	role	CDATA	#IMPLIED
	reverseRole	CDATA	#IMPLIED
	shape	CDATA	#IMPLIED
	coords	CDATA	#IMPLIED
	arcrole	CDATA	#IMPLIED
	label	CDATA	#IMPLIED
	from	CDATA	#IMPLIED
	to	CDATA	#IMPLIED
	mediaType	CDATA	#IMPLIED
	onSuccess	CDATA	#IMPLIED
	onFailure	CDATA	#IMPLIED
	%HLINK.common.attrib;>
]]>

<!-- end of core.mod -->
