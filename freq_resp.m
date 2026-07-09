pkg load control;
k = 1;
s = tf('s');           % define lalace variable
sysH = 1/(s+k);        % define system by its transfer function
w = logspace(-2, 2);   % set frequency w to 50 values from 10^-2 to 10^+2

bode(sysH, w);

%[mag, phase] = bode(sysH, w); % compute frequency response
%loglog(w, squeeze(mag));      % log-log plot of magnitude
%semilogx(w, squeeze(phase));  % semi-log plot of phase

