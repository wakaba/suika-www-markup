BIN = ../../../tool/
LIB = ../../../tool/

ECHO = echo
PERL = perl -I$(LIB)
MKDTDS = $(BIN)mkdtds.pl
RM = rm -vf

all: tree .cvsignore

%: %.dms $(MKDTDS)
	$(PERL) $(MKDTDS) $<

.cvsignore:
	$(ECHO) "*.mod" > $@
	$(ECHO) "*~" >> $@
	$(ECHO) "*.BAK" >> $@
	$(ECHO) ".*~" >> $@
	$(ECHO) ".*.BAK" >> $@
	$(ECHO) $@ >> $@

clean:
	$(RM) *.mod
	$(RM) *.BAK .*.BAK *~ .*~ .cvsignore
