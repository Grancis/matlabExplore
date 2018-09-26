function n = get_n_perfect_gas( para,p )
    T=para(3);
    V=para(4);
    R=para(5);
    n=(p*V)/(R*T);
end

