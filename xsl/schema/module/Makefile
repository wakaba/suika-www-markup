BIN = ../../../tool/
LIB = ../../../tool/

PERL = perl -I$(LIB)
MKDTDS = $(BIN)mkdtds.pl

all: rfc2629 rfc2629ja myns

%: %.dms $(MKDTDS)
	$(PERL) $(MKDTDS) $<
