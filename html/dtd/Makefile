BIN = ../../tool/
LIB = ../../tool/

PERL = perl -I$(LIB)
MKDTDS = $(BIN)mkdtds.pl

all: xhtml11-webforms20.dtd

%.dtd: %.dds $(MKDTDS)
	$(PERL) $(MKDTDS) $<
