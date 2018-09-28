function y = differenrial(para,n,p)
    a=para(1);
    b=para(2);
    T=para(3);
    V=para(4);
    R=para(5);
    y=-b*(p+(a*(n^2))/V^2)+(2*a)*n*(V-n*b)/V^2-R*T;
end

