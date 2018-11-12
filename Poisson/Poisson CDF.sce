// Poisson CDF
// LE THU HUONG ADEO1
clc
N = 10000;
lamda = 4;
x0 = -2;
delx =0.05;
xmax = 12;
x = [x0:delx:xmax];

for k = 1:length(x)
    c = 0;
    for j = 1:N;
        cumul = exp(-lamda);
        proba = cumul;
        u = rand ();
        alpha = 0; 
            while u > cumul then 
                alpha = alpha + 1;
                proba = proba * lamda/alpha; 
                cumul = cumul + proba;
            end;
                poisson = alpha
            if poisson < x(k) + delx then
                c = c + 1;
            end;
        end;
    Proba (k) = c/N;
end;
plot (x, Proba,'dr');
title (" SIMULATION OF POISSON CDF ");
xlabel(" number of x ");
ylabel(" F(x)");
