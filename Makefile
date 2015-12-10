DESTDIR =
MFDIR = $(DESTDIR)/var/mfab
MODPATH = $(MFDIR)/node_modules/svg-stacker
BINPATH = $(MFDIR)/bin

all:
	npm install

install:
	if [ ! -f $(MODPATH) ]; then mkdir -p $(MODPATH); fi
	if [ ! -f $(BINPATH) ]; then mkdir -p $(BINPATH); fi
	tar cpf - bin node_modules package.json | ( cd $(MODPATH) && tar xpvf - )
	cp bin/svg-stacker $(BINPATH)

package:
	fakeroot debian/rules binary

clean:
	rm -rf node_modules
	fakeroot debian/rules clean
