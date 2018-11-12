//generate the PDF exponential function
//LE THU HUONG _ ADEO1

clc
N = 10000;
THETA = 0.8;
x0 = -2;
xmax= 10;
delx = 0.04;
x=[ x0 : delx : xmax ];

for i = 1 :length(x)
    c = 0;
    for K = 1 : N
        u = rand();
        alpha = log(abs(1-u))/(-THETA);
        exponential = alpha;
            if( exponential < x(i) + delx ) then 
                c = c + 1;
            end
    end
probability(i)=c/N;
end

plot( x , probability ,'*dk' )
title (" SIMULATION OF EXPONENTIAL: CDF");
xlabel(" number of x ");
ylabel(" F(x)");

