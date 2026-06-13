% calculate and plot the velocity of a linear motor as a function of load
VB = 120; %battery voltage (V)
r = 0.3;  %resistance (ohms)
l = 1;    %bar length (m)
B = 0.6;  %flux density (T)

% select the forces to apply to the bar
F = 0:10:50;  %force (N)

% calculate the currents flowing in the motor
i = F / (l * B);  %current (A)

% calculate the induced voltage on the bar.
eind = VB - i * r;  %induced voltage (V)

% calculate the velocities of the bar.
v_bar = eind / (l * B);  %velocity (m/s)

% plot the velocities of the bar versus force.
plot(F, v_bar);
title('plot of velocity versus Applied Force');
xlabel('Force (N)');
ylabel('Velocity (m/s)');
axis([0 50 0 200])

