% M-file to calculate the flux in example 1-1.

l1 = 0.4;
l2 = 5*1E-4;
a = 1.2*1E-3;
ur = 4000;
u0 = 4*pi*1E-7;
n = 400;

% calculate the total relactanc of the flux path
r1 = l1 / u0 * ur * a;
r2 = l2 / u0 * ur * a;

rtot = r1 = r2;
disp(['The total relactanc = ' num2str(rtot)]);

% the total current to produce a flux density of 0.5 T in the air gap
flux = 0.5;
i = flux * r2 / n ;
disp(['The required current to produce a flux dinsity of 0.5 T in the air gap = ' num2str(i)]);

