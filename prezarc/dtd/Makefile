BIN = ../../tool/
LIB = ../../tool/

PERL = perl -I$(LIB)
MKDTDS = $(BIN)mkdtds.pl

%.dtd: %.dds $(MKDTDS)
	$(PERL) $(MKDTDS) $<
