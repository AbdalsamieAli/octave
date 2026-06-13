% M-file to calculate the flux in example 1-1.

l1 = 0.4;
l2 = 0.0005;
a = 0.0012;
a0 = a * 1.5;
ur = 4000;
u0 = 4*pi*1E-7;
n = 400;

% calculate the total relactanc of the flux path
r1 = l1 / (u0 * ur * a);
r2 = l2 / (u0 * a0);
disp(r1);
disp(r2);

rtot = r1 + r2;
disp(['The total relactanc = ' num2str(rtot)]);

% the total current to produce a flux density of 0.5 T in the air gap
b = 0.5;
i = (b*a0*r2) / n;
disp(['The required current = ' num2str(i)]);

