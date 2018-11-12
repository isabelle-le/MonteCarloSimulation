//Poisson calculate Exp and Var
//Le Thu Huong ADEO1

clc
N = 500000;
lamda= 4;
Exp = 0;
var =0;

for i = 1:N
    cumul = exp(-lamda);
    proba = cumul;
    u = rand();
    alpha = 0;
    while( u > cumul) then
        alpha = alpha + 1;
        proba = proba * lamda/alpha; 
        cumul = cumul + proba;
    else
        poisson = alpha;
    end
    Exp = Exp + poisson / N;
    var = var + poisson^2 / N; 
 end
    Var = var - Exp^2;
disp(' IT IS POISSON SIMILATION ');
disp(Exp,'in theoritical,E[x] = lamda = 3 & our similation E[x] = ');
disp(Var,'in theoritical,Var[x] = lamda = 3 & our simulation Var[x] = ');
