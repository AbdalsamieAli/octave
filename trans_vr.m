% M-file to calculate and plot the voltage regulation
% m-file to calculate and plot the voltage requlation
% of a transformeer as a function of load
% for power factors of 0.8 lagging, 1.0, and 0.8 leading .


VS = 230;           % secondary voltage
amps = 0:6.52:65.2; % current values
Req = 0.0445;       % equivalent R
Xeq = 0.0645;       % equivalent X

% calculate the current values for the three
% power factor. the first row  of I contains
% the lagging currents, the second row contains
% the unity currents, and the third row contains the leading current.
I(1,:) = amps * (0.8 - j*0.6);   % lagging
I(2,:) = amps * (1.0);           % unity
I(3,:) = amps * (0.8 + j*0.6);   % leading

% calculate VP/a.
VPa = VS + Req*I + j*Xeq*I;

% calculate voltage requlation
VR = ((abs(VPa) - VS) / VS )* 100;

%disp(['VR ' num2str(VR) ]);

##% Plot the voltage requlation
plot(amps, sin(amps));
##hold on;
##plot(amps, VR(2, :), 'k-');
##plot(amps, VR(3, :), 'r-');
##title('Voltage Requlation Versus Load');
##xlablel('Load (A)');
##ylablel('Voltage Requlation (%)');
##legend('0.8 PF lagging', '1.0 PF', '0.8 PF leading');
##hold off;
