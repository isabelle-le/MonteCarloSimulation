//Normal Distribution Exp and Var
// Le Thu Huong ADEO1

clc
N = 10000;
n = 30;
Exp = 0;
var = 0;

for j = 1:N
    ubar = 0;
    
    for i = 1:n
        u =  rand();
        ubar = ubar + u/n;
    end
    
    alpha = sqrt(12*n)*(ubar - 0.5);
    normal = alpha;
    Exp = Exp + normal/N;
    var = var + normal^2 /N;
end

Var = var - Exp^2;

disp('IT IS SIMULATION OF NORMAL DISTRIBUTION 1st METHOD CENTRAL LIMIT THEOREM');
disp(Exp, 'in theory Exp[x] = 0 and our simulation Exp[x] = ');
disp(Var, 'in theory Var[x] = 1 and our simulation Var[x] = ');
