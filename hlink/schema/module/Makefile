BIN = ../../../tool/

PERL = perl 
MKDTDS = $(BIN)mkdtds.pl

all: hlink

%: %.dms $(MKDTDS)
	$(PERL) $(MKDTDS) $<

## License: Public Domain.
