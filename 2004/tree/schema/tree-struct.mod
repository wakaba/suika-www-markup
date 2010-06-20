<!-- ...................................................................... -->
<!-- Tree Structure Module ................................................ -->
<!-- file: tree-struct.mod
     
     This is a markup vocabulary for trees, as defined by 564
     <http://pc5.2ch.net/test/read.cgi/hp/1101043958/564>.
     
     Copyright 2010 Wakaba <w@suika.fam.cx>, All Rights Reserved.
     
     Permission to use, copy, modify and distribute this DTD and its
     accompanying documentation for any purpose and without fee is hereby
     granted in perpetuity, provided that the above copyright notice and
     this paragraph appear in all copies.  The copyright holders make no
     representation about the suitability of the DTD for any purpose.
     
     It is provided "as is" without expressed or implied warranty.
     
     Revision: 2010-06-20T04:57:39+00:00 (Generated by mkdtds/1.7)
     
     This DTD module is identified by the SYSTEM identifier:
     
       SYSTEM "http://suika.fam.cx/www/markup/2004/tree/schema/tree-struct.mod"
     
     ...................................................................... -->

<!-- Structure

       leaf, node, root

     This module defines the major structural element types and
     their attributes.
-->

<!-- root .............................................. -->

<!ENTITY % tree.root.element "INCLUDE">
<![%tree.root.element;[
<!ENTITY % tree.root.content "(%tree.content.qname;?,(%tree.leaf.qname;|%tree.node.qname;)*)">
<!ENTITY % tree.root.qname "root">
<!ENTITY % tree.root.tagmin.start "-">
<!ENTITY % tree.root.tagmin.end "-">
<![%sgml.tag.minimizable;[
<!ENTITY % tree.root.tagmin "%tree.root.tagmin.start; %tree.root.tagmin.end;">
<!-- end of sgml.tag.minimizable -->]]>
<!ENTITY % tree.root.tagmin "">
<!ELEMENT %tree.root.qname; %tree.root.tagmin; %tree.root.content;>
<!-- end of tree.root.element -->]]>

<!ENTITY % tree.root.attlist "INCLUDE">
<![%tree.root.attlist;[
<!ATTLIST %tree.root.qname;
	%tree.common.attrib;>
<!-- end of tree.root.attlist -->]]>

<!-- leaf .............................................. -->

<!ENTITY % tree.leaf.element "INCLUDE">
<![%tree.leaf.element;[
<!ENTITY % tree.leaf.content "%tree.ANY.qname;">
<!ENTITY % tree.leaf.qname "leaf">
<!ENTITY % tree.leaf.tagmin.start "-">
<!ENTITY % tree.leaf.tagmin.end "-">
<![%sgml.tag.minimizable;[
<!ENTITY % tree.leaf.tagmin "%tree.leaf.tagmin.start; %tree.leaf.tagmin.end;">
<!-- end of sgml.tag.minimizable -->]]>
<!ENTITY % tree.leaf.tagmin "">
<!ELEMENT %tree.leaf.qname; %tree.leaf.tagmin; %tree.leaf.content;>
<!-- end of tree.leaf.element -->]]>

<!ENTITY % tree.leaf.attlist "INCLUDE">
<![%tree.leaf.attlist;[
<!ATTLIST %tree.leaf.qname;
	%tree.common.attrib;>
<!-- end of tree.leaf.attlist -->]]>

<!-- node .............................................. -->

<!ENTITY % tree.node.element "INCLUDE">
<![%tree.node.element;[
<!ENTITY % tree.node.content "(%tree.content.qname;?,(%tree.leaf.qname;|%tree.node.qname;)*)">
<!ENTITY % tree.node.qname "node">
<!ENTITY % tree.node.tagmin.start "-">
<!ENTITY % tree.node.tagmin.end "-">
<![%sgml.tag.minimizable;[
<!ENTITY % tree.node.tagmin "%tree.node.tagmin.start; %tree.node.tagmin.end;">
<!-- end of sgml.tag.minimizable -->]]>
<!ENTITY % tree.node.tagmin "">
<!ELEMENT %tree.node.qname; %tree.node.tagmin; %tree.node.content;>
<!-- end of tree.node.element -->]]>

<!ENTITY % tree.node.attlist "INCLUDE">
<![%tree.node.attlist;[
<!ATTLIST %tree.node.qname;
	%tree.common.attrib;>
<!-- end of tree.node.attlist -->]]>


<!-- end of tree-struct.mod -->
