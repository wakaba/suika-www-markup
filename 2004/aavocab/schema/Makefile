BIN = ../../../tool/
LIB = ../../../tool/

PERL = perl -I$(LIB)
MKDTDS = $(BIN)mkdtds.pl

all: aavocab

%: %.dms $(MKDTDS)
	$(PERL) $(MKDTDS) $<
