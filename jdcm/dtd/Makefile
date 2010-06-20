BIN = ../../tool/

PERL = perl 
MKDTDS = $(BIN)mkdtds.pl

all: jdcm.dtd

%.dtd: %.dds $(MKDTDS)
	$(PERL) $(MKDTDS) $<

## License: Public Domain.
