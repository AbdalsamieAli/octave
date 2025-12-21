% vector of times for output, 0 to 10 at 0.02 increments
t = 0:0.02:10;
m = 1;  %value of mass(Kg)
L = 1;  %value of length (m)
g = 9.81; %value of gravity, g (m/sec^2)
s = tf('s');  % sets up transfer function input mode
sys = (1/(m*L^2))/(s^2+g/L);
y = step(sys, t);   % computes step responses at times givenby t for step at t = 0
Rad2Dag = 57.3;     % converts radians to degrees
plot(t, Rad2Dag*y)  % converts output from radians to degreesand plot step response
