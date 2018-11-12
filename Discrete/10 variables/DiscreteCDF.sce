//Discrete CDF
// Le Thu Huong ADEO1

clear
N=1000;
alpha=0;
x(1)=1;
x(2)=0.5;
x(3)=8;
x(4)=0.8;
x(5)=5;
x(6)=4;
x(7)=3;
x(8)=0.4;
x(9)=7;
x(10)=10;
p(1)=0.03;
p(2)=0.28;
p(3)=0.1;
p(4)=0.08;
p(5)=0.1;
p(6)=0.01;
p(7)=0.01;
p(8)=0.02;
p(9)=0.3;
p(10)=0.07;
delta_t=0.05;
t0=0;
tmax=10;
t=[t0:delta_t:tmax];

for k=1:length(t)
    c=0;
    for j = 1:N
        cum=0;
        u=rand();
            for i=1:10
                if u>cum then cum=cum+p(i);
                if cum>= u then alpha=x(i);
                end
                end
            end
        discrete = alpha;
        if discrete < t(k)+delta_t then c=c+1;
        end
    end
proba(k)=c/N;   
end 
plot(t,proba,'*db');


