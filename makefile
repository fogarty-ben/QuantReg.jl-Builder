quantregjl: rqbr.f rqfnb.f
	gfortran rqbr.f rqfnb.f --shared  -o quantregjl.o -fPIC -std=legacy

install: quantregjl.o
	install -m 644 quantregjl.o ./quantregjl.a