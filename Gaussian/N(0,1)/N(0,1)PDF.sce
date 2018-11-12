//Gaussian N(0,1) Distribution PDF
// Le Thu Huong ADEO1

clc
N = 10000;
x0 = -4;
xmax = 4;
delx = 0.1;
x = [x0:delx:xmax];

for k = 1:length(x)
    c1 = 0;
    c2 = 0;
    for i = 1:N
        
        u1 = rand();
        u2 = rand();
        
        V1 = 2*u1 - 1;
        V2 = 2*u2 - 1;
        
        S = V1^2 + V2^2;
        
        if S <= 1 then
            alpha1 = sqrt(-2*log(S)/S)*V1;
            alpha2 = sqrt(-2*log(S)/S)*V2;
            
         normalOne = alpha1;
         normalTwo = alpha2;
        if normalOne>x(k) & normalOne < x(k)+ delx then
            c1 = c1 + 1;
        end
        if normalTwo> x(k) & normalTwo < x(k)+ delx then
            c2 = c2 + 1;
        end
        end
        end
ProbaOne(k)= c1/N;
ProbaTwo(k)= c2/N;
end
plot(x,ProbaOne,'dg')
plot(x,ProbaTwo,'dr')
title('SIMULATION OF STD GAUSSIAN 2nd POLAR COORDINATES METHOS - PDF');
xlabel(' number of x ');
ylabel(' f[x] ');
