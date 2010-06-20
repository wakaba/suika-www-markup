<!-- ...................................................................... -->
<!-- XJDCM (Based on JIS X 4052:2000) Datatypes Module .................... -->
<!-- file: jdcm-datatype.mod
     
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
     
       SYSTEM "data:,jdcm-dtd-module-jdcm-datatype.mod"
     
     ...................................................................... -->

<!-- Datatypes

     This module defines containers for the datatypes.
-->

<!-- <angle> := <number> "deg" / "0" [JIS X 4052:2000, 5.3.4] -->
<!ENTITY % jdcm.angle.datatype "CDATA">

<!-- (<positive <number>> ("cm" / "mm" / "jpt" / "pt" / "q") / "0") -->
<!ENTITY % jdcm.borderlength.datatype "CDATA">

<!-- %Character.datatype; *(WSP %Character.datatype;) -->
<!ENTITY % jdcm.characters.datatype "CDATA">

<!ENTITY % jdcm.classes.datatype "CDATA">

<!-- Internet Media Type [RFC 2046] -->
<!ENTITY % ContentType.datatype "CDATA">

<!-- <integer> := 1*DIGIT [JIS X 4052:2000, 5.3.1] -->
<!ENTITY % jdcm.integer.datatype "NMTOKEN">

<!-- <length> := <number> <unit> / "0" [JIS X 4052:2000, 5.3.2] -->
<!ENTITY % jdcm.length.datatype "CDATA">

<!-- IETF Language Tag -->
<!ENTITY % LanguageCode.datatype "CDATA">

<!ENTITY % jdcm.LinkType.datatype "(stylesheet|prev|next)">

<!-- <number> := ["+" / "-"] *DIGIT ["." *DIGIT] [JIS X 4052:2000, 5.3.1] -->
<!ENTITY % jdcm.number.datatype "CDATA">

<!-- <percentage> := <number> "%" / "0" [JIS X 4052:2000, 5.3.3] -->
<!ENTITY % jdcm.percentage.datatype "CDATA">

<!-- isSubClassOf <length>;
     position := <positive <integer>> "px" / "0";
     [JIS X 4052:2000, 6.2 b) 1.2.3)] -->
<!ENTITY % jdcm.position.datatype "CDATA">

<!-- <positive <integer>> -->
<!ENTITY % jdcm.positiveinteger.datatype "CDATA">

<!-- JIS X 4052:2000 style language (text/jss) -->
<!ENTITY % jdcm.StyleSheet.datatype "CDATA">

<!-- tablelength := tablelengthnozero / "0"
     [JIS X 4052:2000, 6.6 b) 2)] -->
<!ENTITY % jdcm.tablelength.datatype "CDATA">

<!-- isSubClassOf <length>;
     tablelengthnozero := <positive <number>>
     ("字" / "em" / "en" / "cm" / "mm" / "jpt" / "pt" / "q");
     [JIS X 4052:2000, 6.6 b) 2)] -->
<!ENTITY % jdcm.tablelengthnozero.datatype "CDATA">

<!-- tablelength *(WSP tablelength) [JIS X 4052:2000, 6.11 b) 1)] -->
<!ENTITY % jdcm.tablelengths.datatype "CDATA">

<!-- A URI Reference -->
<!ENTITY % URI.datatype "CDATA">

<!-- <長さ{横幅,縦幅}> := 幅 "," 幅
     幅 := <positive <number>> ("mm" / "cm") [JIS X 4052:2000, 5.3.2] -->
<!ENTITY % jdcm.長さ.datatype "CDATA">


<!-- end of jdcm-datatype.mod -->
