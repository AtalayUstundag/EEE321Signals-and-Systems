% Numerical Result
range1 = 100;
range2 = -range1:1:range1;
uh = zeros(size(range2));
uh(range2 >= 4) = 1;
impulse = (7/8).^range2 .* uh;
r = (-range1/2):1:(range1/2);
x3 = zeros(size(r));
x3((r <= 20) & (r >= 2)) = exp((2:20).*1/3*1i);
y3 = zeros(size(r));
for k = -(range1/2):(range1/2)
    a = impulse(r-k+range1+1) .* x3(k+(range1/2)+1);
    y3 = y3 + a;
end

% Plot Numerical Result
figure;  % Open a new figure window
stem(r,real(y3),'filled');
xlabel('n');
ylabel('Real Part of y[n] = h[n]*x3[n]');
title('Numerical Result for Real Part of y_3[n]');
grid on;

figure;
stem(r,imag(y3),'filled');
xlabel('n');
ylabel('Imaginery Part of y[n] = h[n]*x3[n]');
title('Numerical Result for Imaginary Part of y_3[n]');
grid on;

% Parameters
range2 = -10:100;  
y3_2 = zeros(size(range2)); 
j = sqrt(-1);  
 
y3_2((range2 >= 6) & (range2 <= 24)) = (exp(j/3).^range2((range2 >= 6) & (range2 <= 24))) .* ...
    (((7/8) * exp(-j/3))^4 - ((7/8) * exp(-j/3)).^(range2((range2 >= 6) & (range2 <= 24)) - 1)) ...
    / (1 - (7/8) * exp(-j/3));

y3_2((range2 >= 24)) = (exp(j/3).^range2((range2 >= 24))) .* ...
    (((7/8) * exp(-j/3)).^(range2((range2 >= 24)) - 20) - ((7/8) * exp(-j/3)).^(range2((range2 >= 24)) - 1)) ...
    / (1 - (7/8) * exp(-j/3));

% Plot the result
figure;
stem((-10:50), real(y3_2(1:61)), 'filled', 'r');  % Plot real part of y3[n]
xlabel('n');
ylabel('Real Part of y3[n]');
title('Analytical Result for Real Part y3[n]');
grid on;


% Plot the result
figure;
stem((-10:50), imag(y3_2(1:61)), 'filled', 'r');  % Plot real part of y3[n]
xlabel('n');
ylabel('Imaginary Part of y3[n]');
title('Analytical Result for Imaginary Part for y3[n]');
grid on;