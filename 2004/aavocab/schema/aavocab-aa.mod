<!-- ...................................................................... -->
<!-- aavocab AAs and Face Marks Module .................................... -->
<!-- file: aavocab-aa.mod
     
     This is the "aavocab", as defined by 16
     <http://pc5.2ch.net/test/read.cgi/hp/1096723178/16>.
     
     Copyright 2004 Wakaba <wakaba@suikawiki.org>, All Rights Reserved.
     
     Permission to use, copy, modify and distribute this DTD and its
     accompanying documentation for any purpose and without fee is hereby
     granted in perpetuity, provided that the above copyright notice and
     this paragraph appear in all copies.  The copyright holders make no
     representation about the suitability of the DTD for any purpose.
     
     It is provided "as is" without expressed or implied warranty.
     
     Revision: 2004-12-21T07:28:24+00:00 (Generated by mkdtds/1.06)

     R4.9.18  URLs updated.

     This DTD module is identified by the SYSTEM identifier:
     
       SYSTEM "https://suika.suikawiki.org/www/markup/2004/aavocab/schema/aavocab-aa.mod"
     
     ...................................................................... -->

<!-- AAs and Face Marks

       aa
-->

<!-- aa: aa$BMWAG$NFbMF$OJ8;zNs$G$"$k$,!"$=$l$O7P83$K8=$l$?8=>]$H$7$F$NJ*$G$J$/$F!"(B
     $B$=$&$7$?8=>]$HFHN)$K$=$l<+BN$H$7$F$"$k$H9M$($i$l$?J*$H$7$F%$%s%9%?%s%92=$5$l$k!#(B
     $B$3$l$O2f!9$N4641$r?(H/$7$F!"D>4Q$N7A<0$N=u$1$r<Z$j$F%l%s%@%j%s%0$r@8$8$5$;$k$,!"(B
     $B$=$l<+BN$,$I$s$J$b$N$G$"$k$+$O2f!9$K$OIT2DCN$G$"$k$H$9$k!#(B
     
     <http://pc5.2ch.net/test/read.cgi/hp/1096723178/19>
     
     Example:
       <aa xmlns="http://pc5.2ch.net/test/read.cgi/hp/1096723178/aavocab#">orz</aa>  -->

<!ENTITY % aavocab.aa.element "INCLUDE">
<![%aavocab.aa.element;[
<!ENTITY % aavocab.aa.content "(#PCDATA|%Inline.mix;)*">
<!ENTITY % aavocab.aa.qname "aa">
<!ENTITY % aavocab.aa.tagmin.start "-">
<!ENTITY % aavocab.aa.tagmin.end "-">
<![%sgml.tag.minimizable;[
<!ENTITY % aavocab.aa.tagmin "%aavocab.aa.tagmin.start; %aavocab.aa.tagmin.end;">
<!-- end of sgml.tag.minimizable -->]]>
<!ENTITY % aavocab.aa.tagmin "">
<!ELEMENT %aavocab.aa.qname; %aavocab.aa.tagmin; %aavocab.aa.content;>
<!-- end of aavocab.aa.element -->]]>

<!ENTITY % aavocab.aa.attlist "INCLUDE">
<![%aavocab.aa.attlist;[
<!ATTLIST %aavocab.aa.qname;
	xml:lang	%LanguageCode.datatype;	#IMPLIED
	xml:base	%URI.datatype;	#IMPLIED
	xml:space	(default|preserve)	#IMPLIED
	%XSI.prefix;:schemaLocation CDATA #IMPLIED
	%XSI.prefix;:type NMTOKEN #IMPLIED
	%XSI.prefix;:nil (true|false|1|0) #IMPLIED
	%aavocab.common.attrib;>
<!-- end of aavocab.aa.attlist -->]]>


<!-- end of aavocab-aa.mod -->
