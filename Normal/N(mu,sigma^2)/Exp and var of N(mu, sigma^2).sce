//Gaussian Distribution N(mu,sigma^2) Exp and Var
//Le Thu Huong ADEO1

clc
N = 70000;
n = 30;
Exp = 0;
var = 0;
mu = 3;
sigma = 0.6;

for j = 1:N
    ubar = 0;
    
    for i = 1:n
        u =  rand();
        ubar = ubar + u/n;
    end
    
    alpha = sqrt(12*n)*(ubar - 0.5);
    x = sigma*alpha + mu;
    
    normal = x
    Exp = Exp + normal/N;
    var = var + normal^2 /N;
end

Var = var - Exp^2;

disp('IT IS GAUSSIAN DISTRIBUTION 1st METHOD TCL');
disp(Exp,' in theory Exp[x]= mu & our simulation Exp[x]= ');
disp(Var,' in theory Var[x]= sig & our simulation Var[x]= ');
