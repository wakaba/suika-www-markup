BIN = ../../../tool/
LIB = ../../../tool/

PERL = perl -I$(LIB)
MKDTDS = $(BIN)mkdtds.pl

all: ssml1

%: %.dms $(MKDTDS)
	$(PERL) $(MKDTDS) $<
