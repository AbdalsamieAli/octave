% Program takes sequences values and convert them to phase values
% YNPUT :
% OUTPUT :

% a oparator
a0 = 1;
a1 = a0 * cos(120) + (a0 * sin(120)) * i;
a2 = a0 * cos(240) + (a0 * sin(240)) * i;

% zero sequences phasors
r0 = 0;
ang0 = deg2rad(0);
X0 = r0 * ( cos(ang0) + 1i * sin(ang0));

r1 = 3.33 * 1255;
ang1 = deg2rad(-90);
X1 = r1 * (cos(ang1) + 1i * sin(ang1));

r2 = r1;
ang0 = deg2rad(90);
X2 = r2 * (cos(ang2) + 1i * sin(ang2));

% calculate the phasors
% matrix A
A = [a0, a0, a0;a0, a2, a1;a0, a1, a2];
Y = A * [X0;X1;X2];

% print the output
Ya = Y(1);
ra = abs(Ya);
rada = arg(Ya);
anga = rad2deg(rada);
disp(['Ya = ' num2str(ra) ' < ' num2str(anga) ]);
%disp(['Or ' num2str(Ya) ]);

Yb = Y(2);
rb = abs(Yb);
angb = angle(Yb) * 180/pi;
disp(['Yb = ' num2str(rb) ' < ' num2str(angb) ]);
%disp(['Or ' num2str(Yb) ]);

Yc = Y(3);
rc = abs(Yc);
angc = angle(Yc) * 180/pi;
disp(['Yc = ' num2str(rc) ' < ' num2str(angc) ]);
%disp(['Or ' num2str(Yc) ]);

