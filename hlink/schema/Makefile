BIN = ../../tool/

PERL = perl
MKDTDS = $(BIN)mkdtds.pl

all: hlink.dtd xhtml11-hlink.dtd

%.dtd: %.dds $(MKDTDS)
	$(PERL) $(MKDTDS) $<

## License: Public Domain.
