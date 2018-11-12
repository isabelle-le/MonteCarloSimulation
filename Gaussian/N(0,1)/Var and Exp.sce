// Gaussian N(0,1)EXP & VAR
// Le Thu Huong ADEO1

clc
N = 100000;
Exp1 = 0;
Exp2 = 0;
var1 = 0;
var2 = 0;
alpha1 = 0;
alpha2 = 0;

for i = 1:N
    
    u1 = rand();
    u2 = rand();
    
    V1 = 2*u1 - 1;
    V2 = 2*u2 - 1;
    
    S = V1^2 + V2^2;
    
    if S <= 1 then
    alpha1 = sqrt(-2*log(S)/S)*V1;
    alpha2 = sqrt(-2*log(S)/S)*V2;
    end

    Exp1 = Exp1 + alpha1/N 
    Exp2 = Exp2 + alpha2/N;;
    var1 = var1 + (alpha1)^2/N;
    var2 = var2 + (alpha2)^2/N;
    
end

    VAR1 = var1 - Exp1*Exp1;
    VAR2 = var2 - Exp2*Exp2;

disp ('IT IS NORMAL DISTRIBUTION 2nd POLAR COORDINATES METHOD');
disp(Exp1,'Exp 1 = ');
disp(VAR1,'Var 1 = ');
disp(Exp2,'Exp 2 = ');
disp(VAR2,'Var 2 = ');
