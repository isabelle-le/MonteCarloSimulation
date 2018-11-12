//Binominal Exp and Var
// Le Thu Huong ADEO1

clc
N = 50000;
n = 50;
p = 0.1;
Exp = 0;
var = 0;

for j = 1:N
    cumul = (1-p)^n;
    alpha = 0;
    proba = cumul;
    u =  rand();
    while ( u > cumul) then
        alpha = alpha + 1;
        proba = proba * (n - alpha + 1)* p/((1-p)*alpha);
        cumul = cumul + proba;
    else
        binominal = alpha;
    end
    Exp = Exp + binominal/N;
    var = var + binominal^2 /N;
end

Var = var - Exp^2;

disp('IT IS BINOMINAL SIMULATION');
disp(Exp,' in theory, Exp[x]= n*p & in our similation Exp[x] = ');
disp(Var, ' in theory, Var[x]= n*p*(1-p) & in our similation Var[x] = ');
