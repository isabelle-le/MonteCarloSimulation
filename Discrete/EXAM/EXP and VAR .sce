//Discrete random variable : homework 19.3.2018
//LE THU HUONG _ ADEO1

N = 200000;
Exp = 0;
alpha = 0;
var = 0;

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

for i = 1:N
    cum = 0;
    u = rand();
    for j = 1 : 10
        if u > cum then cum = cum +p(j);
        if cum > = u then alpha = x(j);
             Exp = Exp + alpha/N;
             var = var + alpha^2/N;
        end
        end
    end
end

Var = var - Exp^2;
disp('IT IS DISCRETE RAMDON VARIABLE SIMULATION');
disp(alpha,'alpha = ');
disp(Exp,'E[x] = ');
disp(Var,'Var[x] = ');

