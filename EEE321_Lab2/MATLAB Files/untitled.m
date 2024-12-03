range = -10:50; 
impulse_1 = (7/8).^(range).*(range >= 4); 

% Plot the impulse response
figure;
stem(range, impulse_1, 'filled');
xlabel('n');
ylabel('h[n]');
title('Impulse Response h[n] = (7/8)^n u[n-4]');
grid on;
