//Normal Distribution CDF
// Le Thu Huong ADEO1

clc
N = 10000;
n = 40;
x0 = -4;
xmax = 4;
delx = 0.2;
x = [x0:delx:xmax];

for k = 1:length(x)
    c=0;
        for j = 1:N
            ubar = 0;
            alpha = 0;
            
                for i = 1:n
                    u =  rand();
                    ubar = ubar + u/n;
                end
            alpha = sqrt(12*n)*(ubar - 0.5)
            normal = alpha;
            
                if normal >= x(k)& normal < x(k)+ delx then
                    c = c + 1;
                end
                
        end
Proba(k)= c/N;
end

plot(x,Proba,'dg')
title('Simulation of Normal Distribution - PDF');
xlabel(' number of x');
ylabel(' P[x]');
