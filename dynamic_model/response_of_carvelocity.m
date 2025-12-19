% sets up the mode to define the transfer function
s = tf('s');
% defines the transfer function
sys = (1/1000)/(s + 50/1000);
% plots the step response for u = 500.
step(500*sys);

