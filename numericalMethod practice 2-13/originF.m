function y = originF( para,n,p)
    a=para(1);
    b=para(2);
    T=para(3);
    V=para(4);
    R=para(5);
    y=(p+(a*n^2)/(V^2))*(V-n*b)-n*R*T;

end

