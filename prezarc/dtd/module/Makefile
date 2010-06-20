BIN = ../../../tool/

PERL = perl 
MKDTDS = $(BIN)mkdtds.pl

all: prezarc

%: %.dms $(MKDTDS)
	$(PERL) $(MKDTDS) $<
