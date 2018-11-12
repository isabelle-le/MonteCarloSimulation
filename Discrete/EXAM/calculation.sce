//CALCULATE THEORY
//LE THU HUONG

clc

Exp = 0;
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

    for j = 1 : 10
                Exp = Exp + x(j)*p(j);
                var = var + x(j)^2 * p(j);
                Var = var - Exp^2;
    end
    
disp ('IT IS THEORITICAL CALCULATION ');
disp(Exp, 'Exp = ');
disp(Var, 'Var = ');











