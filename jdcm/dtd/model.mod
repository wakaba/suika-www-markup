<?xml version="1.0" encoding="iso-2022-jp"?>
<!-- XML Representation of
     "Exchange format for Japanese documents with composition markup
     (JIS X 4052:2000)"
     
     Document Model module
     
     Copyright 2003 Wakaba <w@suika.fam.cx>.
     Revision: $Date: 2003/09/11 08:15:42 $
     
     SYSTEM "http://suika.fam.cx/gate/cvs/*checkout*/markup/jdcm/dtd/model.mod"
  -->

<!ENTITY % jdcm.list.class "%jdcm.dl.qname;|%jdcm.ol.qname;|%jdcm.ul.qname;">
<!ENTITY % jdcm.em.class "%jdcm.em.qname;|%jdcm.strong.qname;|%jdcm.u.qname;|%jdcm.strike.qname;">
<!ENTITY % jdcm.Inline.class "%jdcm.br.qname;|%jdcm.tabset.qname;|%jdcm.ruby.qname;|%jdcm.sup.qname;|%jdcm.sub.qname;|%jdcm.em.class;|%jdcm.mlg.qname;|%jdcm.yoko.qname;|%jdcm.tate.qname;|%jdcm.span.qname;|%jdcm.ch.qname;">
<!ENTITY % jdcm.Block.class "%jdcm.div.qname;|%jdcm.h1.qname;|%jdcm.h2.qname;|%jdcm.h3.qname;|%jdcm.table.qname;|%jdcm.zu.qname;|%jdcm.list.class;|%jdcm.p.qname;">
<!ENTITY % jdcm.semiflow.mix "%jdcm.Inline.class;|%jdcm.list.class;|p">
<!ENTITY % jdcm.Flow.mix "%jdcm.Inline.class;|%jdcm.Block.class;">

<!-- end of model.mod -->
