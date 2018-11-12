//Binominal Probability MASS Function
// Le Thu Huong ADEO1

clc
N = 9000;
alpha = 0;
n = 50;
p = 0.1;
x0 = -2;
delx = 0.02;
xmax = 15;
x = [x0:delx:xmax]

for k = 1 : length(x)
    c = 0;
    for j = 1:N
        cumul = (1-p)^n;
        proba = cumul;
        u =  rand();
        alpha = 0;
        while ( u > cumul) then
            alpha = alpha + 1;
            proba = proba * (n - alpha + 1)* p/((1-p)*alpha);
            cumul = cumul + proba;
        end
        binominal = alpha;
        if binominal < x(k) + delx & binominal >= x(k) then 
        c = c + 1 ;
        end
    end
Proba (k) = c/N;
end

plot (x, Proba,'dr');
title(' SIMULATION OF BINOMINAL - PDF ');
xlabel('number of x');
ylabel('P(x)');
