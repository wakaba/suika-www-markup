BIN = ../../../tool/

PERL = perl 
MKDTDS = $(BIN)mkdtds.pl

all: jdcm

%: %.dms $(MKDTDS)
	$(PERL) $(MKDTDS) $<

## License: Public Domain.
