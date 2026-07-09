% Calculating Symmetrical Commponents
% INOUT :  Unbalanced phasers Ia, Ib, Ic
% OUTPUT : symmetrical components (Zero, Positeve , Nagative sequences)

% a operator
a = -0.5 + 0.866i;
a2 = -0.5 - 0.866i;

% matrix A
A = [1, 1, 1;1, a2, a;1, a, a2];

% unbalanced system
disp('System sequence phasers');
Ia = 1.1295 + 1.2028i;
mag = abs(Ia);
ang = angle(Ia) * (180 / pi);
disp(['Ia = ' num2str(mag) ' < ' num2str(ang)]);
Ib = 0.5158 - 1.2151i;
mag = abs(Ib);
ang = angle(Ib) * (180 / pi);
disp(['Ib = ' num2str(mag) ' < ' num2str(ang)]);
Ic = -0.8035 - 1.3372i;
mag = abs(Ic);
ang = angle(Ic) * (180 / pi);
disp(['Ic = ' num2str(mag) ' < ' num2str(ang)]);
disp('');

% calculating symmetrical
I = [];
I = inv(A) * [Ia;Ib;Ic];
c = (77.3866+4911i) + (75.7968-3.5081i) + (46.8748+2.2946i);
disp(inv(A));

% zero sequence
disp('Zero sequence phasers');
I1 = I(1);
mag = abs(I1);
ang = angle(I1) * (180 / pi);
disp(['I1 = ' num2str(mag) ' < ' num2str(ang)]);
I2 = I1;
mag = abs(I2);
ang = angle(I2) * (180 / pi);
disp(['I2 = ' num2str(mag) ' < ' num2str(ang)]);
I3 = I1;
mag = abs(I3);
ang = angle(I3) * (180 / pi);
disp(['I3 = ' num2str(mag) ' < ' num2str(ang)]);
disp('');

% postive sequence
disp('Positeve sequence phasers');
I1 = I(2,1);
mag = abs(I1);
ang = angle(I1) * (180 / pi);
disp(['I1 = ' num2str(mag) ' < ' num2str(ang)]);
I2 = I1 * a2;
mag = abs(I2);
ang = angle(I2) * (180 / pi);
disp(['I2 = ' num2str(mag) ' < ' num2str(ang)]);
I3 = I1 * a;
mag = abs(I3);
ang = angle(I3) * (180 / pi);
disp(['I3 = ' num2str(mag) ' < ' num2str(ang)]);
disp('');

% negtive sequence
disp('Negtive sequence phasers');
I1 = I(3, 1);
mag = abs(I1);
ang = angle(I1) * (180 / pi);
disp(['I1 = ' num2str(mag) ' < ' num2str(ang)]);
I2 = I1 * a;
mag = abs(I2);
ang = angle(I2) * (180 / pi);
disp(['I2 = ' num2str(mag) ' < ' num2str(ang)]);
I3 = I1 * a2;
mag = abs(I3);
ang = angle(I3) * (180 / pi);
disp(['I3 = ' num2str(mag) ' < ' num2str(ang)]);
disp('');
