% Parameters
n = -10:30; 
h_n = (7/8).^(n).*(n >= 4); % Impulse response h[n] = (7/8)^(n-4)u[n-4]

% Plot the impulse response
figure;
stem(n, h_n, 'filled');
xlabel('n');
ylabel('h[n]');
title('Impulse Response h[n] = (7/8)^n u[n-4]');
grid on;
