//Gaussian N(u,sigma^2) Distribution CDF
// Le Thu Huong ADEO1

clc
N = 10000;
x0 = -10;
xmax = 10;
delx = 0.2;
x = [x0:delx:xmax];
sigma1 = 0.5;
sigma2 = 0.4;
mu1 = 7;
mu2 = 5;

for k = 1:length(x)
    c1 = 0;
    c2 = 0;
    z1 = 0;
    z2 = 0;
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
        if normalOne > x(k) & normalOne < x(k)+ delx then
            c1 = c1 + 1;
        end
        if normalTwo > x(k) & normalTwo < x(k)+ delx then
            c2 = c2 + 1;
        end
        
        zed1 = sigma1*alpha1 + mu1;
        normalThree = zed1;
        if normalThree > x(k) & normalThree < x(k)+ delx then
            z1 = z1 + 1;
        end
        zed2 = sigma2*alpha2 + mu2;
        
        normalFour = zed2;
        if normalFour > x(k) & normalFour < x(k)+ delx then
            z2 = z2 + 1;
        end
        
        end
        end
ProbaOne(k)= c1/N;
ProbaTwo(k)= c2/N;
ProbaThree(k)= z1/N;
ProbaFour(k)= z2/N;
end

plot(x,ProbaOne,'dg')//normal
plot(x,ProbaTwo,'db') // normal
plot(x,ProbaThree,'dy') // gaussian
plot(x,ProbaFour,'dr') //gaussian
title('SIMULATION OF NORMAL & GAUSSIAN 2nd POLAR COORDINATES METHOS - PDF');
xlabel(' number of x ');
ylabel(' f[x] ');
