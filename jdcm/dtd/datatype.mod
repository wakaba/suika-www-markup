<?xml version="1.0" encoding="iso-2022-jp"?>
<!-- XML Representation of
     "Exchange format for Japanese documents with composition markup
     (JIS X 4052:2000)"
     
     Datatype module
     
     Copyright 2003 Wakaba <w@suika.fam.cx>.
     Revision: $Date: 2003/09/11 08:15:42 $
     
     SYSTEM "http://suika.fam.cx/gate/cvs/*checkout*/markup/jdcm/dtd/datatype.mod"
  -->


<!-- <angle> := <number> "deg" / "0" [JIS X 4052:2000, 5.3.4] -->
<!ENTITY % jdcm.angle.datatype "CDATA">

<!-- (<positive <number>> ("cm" / "mm" / "jpt" / "pt" / "q") / "0") -->
<!ENTITY % jdcm.borderlength.datatype "CDATA">

<!-- %Character.datatype; *(WSP %Character.datatype;) -->
<!ENTITY % jdcm.characters.datatype "CDATA">

<!-- <integer> := 1*DIGIT [JIS X 4052:2000, 5.3.1] -->
<!ENTITY % jdcm.integer.datatype "CDATA">

<!-- <length> := <number> <unit> / "0" [JIS X 4052:2000, 5.3.2] -->
<!ENTITY % jdcm.length.datatype "CDATA">

<!-- <number> := ["+" / "-"] *DIGIT ["." *DIGIT] [JIS X 4052:2000, 5.3.1] -->
<!ENTITY % jdcm.number.datatype "CDATA">

<!-- <percentage> := <number> "%" / "0" [JIS X 4052:2000, 5.3.3] -->
<!ENTITY % jdcm.percentage.datatype "CDATA">

<!-- isSubClassOf <length>;
     position := <positive <integer>> "px" / "0";
     [JIS X 4052:2000, 6.2 b) 1.2.3)] -->
<!ENTITY % jdcm.position.datatype "CDATA">

<!ENTITY % jdcm.positiveinteger.datatype "CDATA">

<!-- JIS X 4052:2000 style language (text/jss) -->
<!ENTITY % jdcm.style.datatype "CDATA">

<!-- isSubClassOf <length>;
     tablelengthnozero := <positive <number>> ("字" / "em" / "en" / "cm" / "mm" / "jpt" / "pt" / "q");
     tablelength := tablelengthnozero / "0"
     [JIS X 4052:2000, 6.6 b) 2)] -->
<!ENTITY % jdcm.tablelength.datatype "CDATA">
<!ENTITY % jdcm.tablelengthnozero.datatype "CDATA">

<!-- tablelength *(WSP tablelength) [JIS X 4052:2000, 6.11 b) 1)] -->
<!ENTITY % jdcm.tablelengths.datatype "CDATA">

<!-- <長さ{横幅,縦幅}> := 幅 "," 幅
     幅 := <positive <number>> ("mm" / "cm") [JIS X 4052:2000, 5.3.2] -->
<!ENTITY % jdcm.長さ.datatype "CDATA">


<!-- end of datatype.mod -->
