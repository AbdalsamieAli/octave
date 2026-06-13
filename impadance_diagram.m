% reactance diagram calculation for example

% new base values
sb = 20;
vb = 6.6;

% genrator rated vlaues
gs1 = 10;
gv1 = 6.6;
gx1 = 0.1;

% genrator new reactance
gx = gx1 * (gv1/vb)^2 * (sb / gs1);
disp(["genrator reactance = " num2str(gx)])

% transformer 1 rated vlaues
ts1 = 10;
tva = 6.6;
tvb = 115;
tx1 = 0.15;

% transformer new reactance
tx11 = tx1 * (tva/vb)^2 * (sb / ts1);
disp(["transformer 1 reactance = " num2str(tx11)])

% base values for transmission system
vb = vb * ( tvb / tva);

% transmission system impadances calculations
x1a = 100j;
x1 = x1a / (vb^2 / sb);
disp(["transmission line 1 reactance = " num2str(x1)]);

x2a = 75j;
x2 = x2a / (vb^2 / sb);
disp(["transmission line 2 reactance = " num2str(x2)]);

x3a  = 200j;
x3 = x3a / (vb^2 / sb);
disp(["transmission line 3 reactance = " num2str(x3)]);

x4a = 50j;
x4 = x4a / (vb^2 / sb);
disp(["transmission line 4 reactance = " num2str(x4)]);

x5a = 150j;
x5= x5a / (vb^2 / sb);
disp(["transmission line 5 reactance = " num2str(x5)]);

% transformer 2 rated vlaues
ts2 = 10 * 3;
tvp = 7.5 * sqrt(3);
tvl = 75 * sqrt(3);
tx2 = 0.15;

% transformer new reactance
tx22 = tx2 * (tvl/vb)^2 * (sb / ts2);
disp(["transformer 2 reactance = " num2str(tx22)])

% base values in primary side of transformer 2
vb = vb * ( tvp / tvl);

% genrator 2 rated vlaues
gs2 = 20;
gv2 = 11.5;
gx2 = 0.1;

% genrator new reactance
gx22 = gx2 * (gv2/vb)^2 * (sb / gs2);
disp(["genrator 2 reactance = " num2str(gx22)])

