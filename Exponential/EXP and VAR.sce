// UNIFORM LAW: simulate exponential (alpha) by taking inverse transform of pdf
//LE THU HUONG--ADEO1

clc
N =90000;
Exp = 0;
var = 0;
VAR = 0;
THETA = 0.5;

for i = 1:N
    u=rand();
    alpha = log(abs(1-u))/ (- THETA);
    exponential = alpha
    Exp = Exp + exponential/N;
    var = var + (exponential)^2/N;
end

    VAR = var - Exp*Exp;
    
disp ('IT IS EXPONENTIAL SIMULATION')
disp(Exp,'in theoritical,E[x] = 1/theta & our model E[x] = ');
disp(VAR, 'in theoritical,Var[x] = 1/theta^2 & our model VAR[x] = ');

