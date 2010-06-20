BIN = ../../../tool/

PERL = perl
MKDTDS = $(BIN)mkdtds.pl

all: xslt1

%: %.dms $(MKDTDS)
	$(PERL) $(MKDTDS) $<

## License: Public Domain.
