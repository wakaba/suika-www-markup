<?xml version="1.0" encoding="iso-2022-jp"?>
<!-- XML Representation of
     "Exchange format for Japanese documents with composition markup
     (JIS X 4052:2000)"
     
     QName module
     
     Copyright 2003 Wakaba <w@suika.fam.cx>.
     Revision: $Date: 2003/09/11 08:15:42 $
     
     SYSTEM "http://suika.fam.cx/gate/cvs/*checkout*/markup/jdcm/dtd/qname.mod"
  -->

<!ENTITY % NS.prefixed "IGNORE">
<!ENTITY % jdcm.prefixed "%NS.prefixed;">
<!ENTITY % jdcm.xmlns "urn:x-suika-fam-cx:markup:jis:x:4052:2000:">
<!ENTITY % jdcm.prefix "">
<![%jdcm.prefixed;[
<!ENTITY % jdcm.pfx "%jdcm.prefix;:">
]]>
<!ENTITY % jdcm.pfx "">
<!ENTITY % jdcm.xmlns.extra.attrib "">

<![%jdcm.prefixed;[
<!ENTITY % NS.decl.attrib
	"xmlns:%jdcm.prefix;	%URI.datatype;	#FIXED	'%jdcm.xmlns;'
	%jdcm.xmlns.extra.attrib;">
]]>
<!ENTITY % NS.decl.attrib
	"%jdcm.xmlns.extra.attrib;">

<![%jdcm.prefixed;[
<!ENTITY % jdcm.xmlns.attrib
	"%NS.decl.attrib;">
]]>
<!ENTITY % jdcm.xmlns.attrib
	"xmlns	%URI.datatype;	#FIXED	'%jdcm.xmlns;'">

<!ENTITY % jdcm.style.qname "%jdcm.pfx;style">
<!ENTITY % jdcm.link.qname "%jdcm.pfx;link">
<!ENTITY % jdcm.head.qname "%jdcm.pfx;head">
<!ENTITY % jdcm.zu.qname "%jdcm.pfx;zu">
<!ENTITY % jdcm.ch.qname "%jdcm.pfx;ch">
<!ENTITY % jdcm.br.qname "%jdcm.pfx;br">
<!ENTITY % jdcm.em.qname "%jdcm.pfx;em">
<!ENTITY % jdcm.strong.qname "%jdcm.pfx;strong">
<!ENTITY % jdcm.u.qname "%jdcm.pfx;u">
<!ENTITY % jdcm.strike.qname "%jdcm.pfx;strike">
<!ENTITY % jdcm.span.qname "%jdcm.pfx;span">
<!ENTITY % jdcm.ruby.qname "%jdcm.pfx;ruby">
<!ENTITY % jdcm.rbc.qname "%jdcm.pfx;rbc">
<!ENTITY % jdcm.rtc.qname "%jdcm.pfx;rtc">
<!ENTITY % jdcm.rb.qname "%jdcm.pfx;rb">
<!ENTITY % jdcm.rt.qname "%jdcm.pfx;rt">
<!ENTITY % jdcm.sub.qname "%jdcm.pfx;sub">
<!ENTITY % jdcm.sup.qname "%jdcm.pfx;sup">
<!ENTITY % jdcm.mlg.qname "%jdcm.pfx;mlg">
<!ENTITY % jdcm.yoko.qname "%jdcm.pfx;yoko">
<!ENTITY % jdcm.tate.qname "%jdcm.pfx;tate">
<!ENTITY % jdcm.th.qname "%jdcm.pfx;th">
<!ENTITY % jdcm.td.qname "%jdcm.pfx;td">
<!ENTITY % jdcm.tr.qname "%jdcm.pfx;tr">
<!ENTITY % jdcm.table.qname "%jdcm.pfx;table">
<!ENTITY % jdcm.tab.qname "%jdcm.pfx;tab">
<!ENTITY % jdcm.tabset.qname "%jdcm.pfx;tabset">
<!ENTITY % jdcm.dt.qname "%jdcm.pfx;dt">
<!ENTITY % jdcm.dd.qname "%jdcm.pfx;dd">
<!ENTITY % jdcm.dl.qname "%jdcm.pfx;dl">
<!ENTITY % jdcm.li.qname "%jdcm.pfx;li">
<!ENTITY % jdcm.ol.qname "%jdcm.pfx;ol">
<!ENTITY % jdcm.ul.qname "%jdcm.pfx;ul">
<!ENTITY % jdcm.p.qname "%jdcm.pfx;p">
<!ENTITY % jdcm.div.qname "%jdcm.pfx;div">
<!ENTITY % jdcm.h1.qname "%jdcm.pfx;h1">
<!ENTITY % jdcm.h2.qname "%jdcm.pfx;h2">
<!ENTITY % jdcm.h3.qname "%jdcm.pfx;h3">
<!ENTITY % jdcm.body.qname "%jdcm.pfx;body">
<!ENTITY % jdcm.jdcm.qname "%jdcm.pfx;jdcm">

<!-- end of qname.mod -->
