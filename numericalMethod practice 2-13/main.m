%parameters
a=0.3638;
b=0.0428;
T=310;
V=10.13;
R=8.314;
para=[];
para(1)=a;
para(2)=b;
para(3)=T;
para(4)=V;
para(5)=R;
%global p n n_perfect_gas n_final time;
p=[0.1013 0.5065 10.1300];
n_perfect_gas=[];
n_final=[];
time=[];
%get n of perfect gas
for j=1:3
    n_perfect_gas(j)=get_n_perfect_gas(para,p(j));
end
%nentown iteration to get n
for ii=1:3
    cnt=1;
    n=n_perfect_gas(ii);
    k=0;
    while k<=100
        o=originF(para,n,p(ii));
        d=differenrial(para,n,p(ii));
        fprintf('%f\t%f\n',o,d);
        y=n-originF(para,n,p(ii))/differenrial(para,n,p(ii));
        if abs(y-n)>10^(-5)
            n=y;
            cnt=cnt+1;
            k=k+1;
        else
            n_final(ii)=y;
            time(ii)=cnt;
            break;
        end
        
    end
    
end
%caculate the deviation
dev=100*(n_perfect_gas./(n_final+[1 1 1]));
%print the result
for j=1:3
    fprintf('when p=%f, iteration times=%d, n=%f, the deviation is %.4f\n',p(j),time(j),n_final(j),dev(ii));
end
