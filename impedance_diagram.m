% impedance diagram calculation for example
k = 1e3;
M = 1e6;

% new base values
sb = 30*M;
vb = 11*k;

% genrator 1 rated vlaues
gs1 = 30*M;
gv1 = 10.5*k;
gx1 = 1.6;

% genrator 1 new impedance
gx = (gx1 / vb^2) * sb ;
disp(["genrator 1 impedance = " num2str(gx)]);

% load a
s1 = 15*M;
v1 = 11*k;
pf1 = 0.9;

% calculating the load a impadance
o = acos(pf1);
st = (s1 * cos(o) + s1 * sin(o) * j);

xa = vb^2 / conj(st);
xapu = (xa / vb^2) * sb;
disp(["load a impadances = " num2str(xapu)]);

% transformer 1 rated vlaues
ts1 = 15*M;
tva = 11*k;
tvb = 33*k;
tx1 = 15.2j;

% base values in secandary side of transformer 1
vb = vb * ( tvb / tva);

% transformer 1 new impedance
tx11 = (tx1 / vb^2) * sb;
disp(["transformer 1 impedance = " num2str(tx11)]);

% transmission system impadances calculations
x1a = 20.5j;
x1 = x1a / (vb^2 / sb);
disp(["transmission line impedance = " num2str(x1)]);

% transformer 2 rated vlaues
ts2 = 15*M;
tvp = 33*k;
tvl = 6.2*k;
tx2 = 16;

% transformer 2 new impedance
tx22 = (tx2 / vb^2) * sb;
disp(["transformer 2 impedance = " num2str(tx22)]);

% base values in primary side of transformer 2
vb = vb * ( tvl / tvp);
disp([" = " num2str(vb)]);

% genrator 2 rated vlaues
gs2 = 15*M;
gv2 = 6.6*k;
gx2 = 1.2j;

% genrator 2 new impedance
gx = (gx2 / vb^2) * sb;
disp(["genrator 2 impedance = " num2str(gx)]);

% genrator 3 rated vlaues
gs3 = 25*M;
gv3 = 6.6*k;
gx3 = 0.56j;

% genrator 3 new impedance
gx = (gx3 / vb^2) * sb;
disp(["genrator 3 impedance = " num2str(gx)]);

% load b
s2 = 34*M + 20.07j*M;
xb = vb^2 / conj(s2);
xbpu = (xb / vb^2) * sb;
disp(["load b impedance = " num2str(xbpu)]);

