quantregjl: rqbr.f rqfnb.f
    gfortran rqbr.f --shared -fPIC -std=legacy
    gfortran rqfnb.f --shared -fPIC -std=legacy
