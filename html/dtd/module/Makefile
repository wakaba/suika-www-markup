BIN = ../../../tool/
LIB = ../../../tool/

PERL = perl -I$(LIB)
MKDTDS = $(BIN)mkdtds.pl

all: webforms20 webforms20-submission html30-00 html-non-standard

%: %.dms $(MKDTDS)
	$(PERL) $(MKDTDS) $<
