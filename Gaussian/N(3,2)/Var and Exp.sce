//Gaussian N(mu,sigma^2)
//Le Thu Huong ADEO1

clc
N = 200000;
Exp1 = 0;
Exp2 = 0;
var1 = 0;
var2 = 0;
alpha1 = 0;
alpha2 = 0;
zed1 = 0;
zed2 = 0;
mu1 = 7;
mu2 = 5;
sigma1 = 0.5;
sigma2 = 0.4;

for i = 1:N
    
    u1 = rand();
    u2 = rand();
    
    V1 = 2*u1 - 1;
    V2 = 2*u2 - 1;
    
    S = V1^2 + V2^2;
    
    if S <= 1 then
    alpha1 = sqrt(-2*log(S)/S)*V1;
    zed1 = sigma1*alpha1 + mu1;
    alpha2 = sqrt(-2*log(S)/S)*V2;
    zed2 = sigma2* alpha2 + mu2;
    end

    normalOne = zed1;
    normalTwo = zed2;
    Exp1 = Exp1 + normalOne/N 
    Exp2 = Exp2 + normalTwo/N;;
    var1 = var1 + (normalOne)^2/N;
    var2 = var2 + (normalTwo)^2/N;
    
end

    VAR1 = var1 - Exp1*Exp1;
    VAR2 = var2 - Exp2*Exp2;

disp('IT IS SIMULATION OF GAUSSIAN DISTRIBUTION - 2nd POLAR COORDINATES METHOD');
disp(Exp1, 'Exp 1 = ');
disp(Exp2, 'Exp 2 = ');
disp(VAR1,'Var 1 = ');
disp(VAR2,'Var 2 = ');
