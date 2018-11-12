// SIMULATION OF STD GAUSSIAN AND GAUSSIAN DISTRIBUTION - CDF
// Le Thu Huong ADEO1

clc
N = 10000;
n = 40;
x0 = -10;
xmax = 15;
delx = 0.2;
x = [x0:delx:xmax];
mu = 3;
sigma = 0.6;

for k = 1:length(x)
    c1 = 0;
    c2 = 0;
        for j = 1:N
            ubar = 0;
            alpha = 0;
                for i = 1:n
                    u =  rand();
                    ubar = ubar + u/n;
                end
            alpha = sqrt(12*n)*(ubar - 0.5); //it s X
            normalOne = alpha;
                if normalOne < x(k)+ delx then
                    c1 = c1 + 1;
                end
                
            zed = sigma* alpha + mu;   // it is Z
            normalTwo = zed
            if normalTwo < x(k)+ delx then
                c2 = c2 + 1;
            end
        end
        
ProbaOne(k)= c1/N; // normal
ProbaTwo(k)= c2/N; // gaussian
end
plot(x,ProbaOne,'dg')
plot(x,ProbaTwo,'dr')
title('SIMULATION OF STD GAUSSIAN AND GAUSSIAN DISTRIBUTION - CDF');
xlabel(' number of x');
ylabel ('F[x]');
