quantregjl: rqbr.f rqfnb.f
	gfortran rqbr.f rqfnb.f --shared  -o quantregjl.o -fPIC -std=legacy

ifeq ($(PREFIX),)
	PREFIX := /usr/local
endif

install: quantregjl.o
    install -d $(DESTDIR)$(PREFIX)/lib/
    install -m 644 quantregjl.o $(DESTDIR)$(PREFIX)/lib/
    install -d $(DESTDIR)$(PREFIX)/include/
    install -m 644 quantregjl.h $(DESTDIR)$(PREFIX)/include/