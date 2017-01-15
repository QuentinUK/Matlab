function [A,B] = paday(c,p,q)
% c is the Taylor Approximation, col vector
% p the number of terms in the numerator A, and q the number of terms in the denominator B
Temp = sparse(p+q+1, q+1);
for iq = 1:q+1
    temp(iq:length(c), iq)=c(1:length(c)-iq+1);
end
B = -Temp(p+2:p+q+1,2:q+1)\c(p+2:p+q+1);
A = Temp(1:p+1,iq+1)*(1;B)
