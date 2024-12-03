n = -40:1:319;
ya = zeros(size(n));
for i = n
    dum = mod(i/10+4.5,18);
    if (dum >= 0) && (dum < 9)
        ya(i+41) = abs(5*cos(pi/9*(dum+4.5)));
    end
end
%figure;
%stem(n, ya, '.k');
%xlabel('n/8')
%ylabel('y[n]')
%title('Plot of ya(t) with Ts =1/10 ; y[n]')

m = -20:1:20;
a = 2.5 * ((sin(pi/2 * (1 - m)) ./ (pi * (1 - m))) + (sin(pi/2 * (1 + m)) ./ (pi * (1 + m))));
a(20) = 5/4;
a(21) = 5/pi;
a(22) = 5/4;

%figure;
%stem(m * pi / 10, a, 'filled', 'b.');
%xlabel('rad/s');
%ylabel('a_k');
%title('Spectrum of y_a(t)');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure;
stem(n/9,ones(1,length(n))*5/pi,'k.');
title('0th Harmonic of y_a(t)');
ylabel('0th Harmonic');xlabel('t');xline(0);yline(0); 
ylim([-5 5])
figure;
stem(n/9,5/2*cos(pi/9*n/9),'k.');
title('1st Harmonic of y_a(t)');
ylabel('1st Harmonic');xlabel('t');xline(0);yline(0);
ylim([-5 5])
% Define the range for n
n = -40:319;

% Initialize the array for ya
ya = zeros(size(n));

% Calculate ya values for each n
for i = n
    dum = mod(i / 10, 9);  % Get the modulo value for the current n
    ya(i + 41) = abs(5 * cos(pi / 9 * dum));  % Calculate the corresponding value of ya
end

% Define the range for m (Fourier coefficients)
m = -20:1:20;  
a = zeros(size(m)); 

a = 5 * ((sin(pi / 2 * (1 - 2 * m)) ./ (pi .* (1 - 2 * m))) + (sin(pi / 2 * (1 + 2 * m)) ./ (pi .* (1 + 2 * m))));  % Fourier series coefficients

% Second Harmonic (k = 2)
k = 2;
f_second_harmonic = 3.3 * a(k + 21) * cos(2 * pi / 9 * k * n / 9);

% Plot the second harmonic
figure;
stem(n / 9, f_second_harmonic, 'k.');
title('2nd Harmonic of y_a(t)');
ylabel('2nd Harmonic');
xlabel('t');
xline(0);  % Adds a vertical line at t = 0
yline(0);  % Adds a horizontal line at y = 0
grid on;   % Enables grid for better readability
ylim([-5 5])


% Define the range for n
n = -40:319;

% Initialize the array for ya
ya = zeros(size(n));

% Calculate ya values for each n
for i = n
    dum = mod(i / 10, 9);  % Get the modulo value for the current n
    ya(i + 41) = abs(5 * cos(pi / 9 * dum));  % Calculate the corresponding value of ya
end

% Define the range for m (Fourier coefficients)
m = -20:1:20;  
a = zeros(size(m)); 

a = 5 * ((sin(pi / 2 * (1 - 2 * m)) ./ (pi .* (1 - 2 * m))) + (sin(pi / 2 * (1 + 2 * m)) ./ (pi .* (1 + 2 * m))));  % Fourier series coefficients

% third Harmonic (k = 3)
k = 3;
f_second_harmonic = 0 * a(k + 21) * cos(2 * pi / 9 * k * n / 9);

% Plot the second harmonic
figure;
stem(n / 9, f_second_harmonic, 'k.');
title('3rd Harmonic of y_a(t)');
ylabel('3rd Harmonic');
xlabel('t');
xline(0);  % Adds a vertical line at t = 0
yline(0);  % Adds a horizontal line at y = 0
grid on;   % Enables grid for better readability
ylim([-5 5])