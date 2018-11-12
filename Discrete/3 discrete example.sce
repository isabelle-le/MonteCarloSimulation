//Discrete random variable
//LE THU HUONG _ ADEO1

clear
N = 10000;
Exp = 0;
alpha = 0;
var = 0;
x(1)=1;
x(2)=2;
x(3)=3;

p(1)=0.3;
p(2)=0.5;
p(3)=0.2;


for i = 1:N
    cum = 0;
    u = rand();
    for j = 1 : 3
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

