//// Discrete PMF homework 19.3.2018
// LE THU HUONG ADEO1

clc
N=5000;
alpha=0;

x(1)=4.5;
x(2)=3;
x(3)=5;
x(4)=2;
x(5)=0.8;
x(6)=6;
x(7)=3.8;
x(8)=1.4;
x(9)=6.5;
x(10)=8;

p(1)=0.3;
p(2)=0.2;
p(3)=0.1;
p(4)=0.08;
p(5)=0.09;
p(6)=0.02;
p(7)=0.03;
p(8)=0.01;
p(9)=0.07;
p(10)=0.1;

delta_t = 0.05;
t0 = 0;
tmax = 10;
t=[t0:delta_t:tmax];

for k=1:length(t)
    c=0;
    for j = 1:N
        cum=0;
        u=rand();
        for i=1:10;
            if u>cum then cum=cum+p(i);
            if cum>= u then alpha=x(i);
            end
            end
        end
    discrete = alpha;
    if discrete >=t(k) & discrete < t(k)+ delta_t then c=c+1;
    end
    end
proba(k)=c/N;
end 
plot(t,proba,'dr');
title (" DISCRETE PMF ");
xlabel(" number of x ");
ylabel(" P(x)");
