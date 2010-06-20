POD2HTML = pod2html --css "http://suika.fam.cx/www/style/html/pod.css" \
  --htmlroot "/www/manakai-core/lib"

all: mkdtds.html

%.html: %.pl Makefile
	$(POD2HTML) $< > $@

## License: Public Domain.
