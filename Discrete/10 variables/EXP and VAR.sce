//Discrete random variable
//LE THU HUONG _ ADEO1

clc
N = 10000;
Exp = 0;
alpha = 0;
var = 0;
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

for i = 1:N
    cum = 0;
    u = rand();
    for j = 1 : 10
                Exp = Exp + x(j)*p(j)/N;
                var = var + x(j)^2 * p(j)/N;
                Var = var - Exp^2;
        if u > cum then cum = cum +p(j);
        if cum > = u then alpha = x(j);
        end
        end
    end
end
disp(alpha);
disp(Exp);
disp(Var);

