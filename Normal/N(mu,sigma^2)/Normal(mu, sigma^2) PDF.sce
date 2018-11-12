// SIMULATION OF STD GAUSSIAN AND GAUSSIAN DISTRIBUTION - PDF
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
    c1=0;
    c2 = 0;
            for j = 1:N
            ubar = 0;
            alpha = 0;
            
                for i = 1:n
                    u =  rand();
                    ubar = ubar + u/n;
                end
                
            alpha = sqrt(12*n)*(ubar - 0.5);
            
            normalOne = alpha;
                if normalOne >= x(k)& normalOne < x(k)+ delx then
                    c1 = c1 + 1;
                end
                
             zed = sigma*alpha + mu;
             normalTwo = zed;
                if normalTwo >= x(k)& normalTwo < x(k)+ delx then
                    c2 = c2 + 1;
                end

        end
ProbaOne(k)= c1/N;
ProbaTwo(k)= c2/N;
end
plot(x,ProbaOne,'dg') //normal
plot(x,ProbaTwo,'dr') // gaussian
title('SIMULATION OF STD GAUSSIAN AND GAUSSIAN DISTRIBUTION - PDF');
xlabel(' number of x');
ylabel ('f[x]');
