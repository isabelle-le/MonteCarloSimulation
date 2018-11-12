//generate the exponential CDF
//LE THU HUONG _ ADEO1

clc
N = 20000;
THETA = 0.8;
x0 = 0;
xmax= 10;
delx = 0.1;
x=[ x0 : delx : xmax ];

for i = 1 :length(x)
    c = 0;
    for K = 1 : N
        u = rand();
        alpha = 0;
        alpha = log(abs(1-u))/(-THETA);
        exponential = alpha;
            if( exponential>=x(i) & exponential < x(i) + delx ) then 
                c = c + 1;
            end
    end
probability(i)=c/N;
end
plot(x, probability ,'*dk' )
title (" SIMULATION OF EXPONENTIAL: PDF");
xlabel(" number of x ");
ylabel(" P(x)");


