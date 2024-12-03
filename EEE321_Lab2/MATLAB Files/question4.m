% Numerical Result
range1 = 100;
range2 = -range1:1:range1;
uh = zeros(size(range2));
uh(range2 >= 4) = 1;
impulse = (7/8).^range2 .* uh;
r = (-range1/2):1:(range1/2);
x4 = zeros(size(r));
x4((r <= 20) & (r >= 2)) = -3*sin((2:20).*1/3);
y4 = zeros(size(r));
for k = -(range1/2):(range1/2)
    a = impulse(r-k+range1+1) .* x4(k+(range1/2)+1);
    y4 = y4 + a;
end

% Plot Numerical Result
figure;  
stem(-10:50,y4(41:101),'filled');
xlabel('n');
ylabel('y[n] = h[n]*x4[n]');
title('Numerical Result of Y_4[n]');
grid on;

range2 = -10:100;  
y3_2 = zeros(size(range2)); 
j = sqrt(-1);  

y3_2((range2 >= 6) & (range2 <= 24)) = (exp(j/3).^range2((range2 >= 6) & (range2 <= 24))) .* ...
    (((7/8) * exp(-j/3))^4 - ((7/8) * exp(-j/3)).^(range2((range2 >= 6) & (range2 <= 24)) - 1)) ...
    / (1 - (7/8) * exp(-j/3));

y3_2((range2 >= 24)) = (exp(j/3).^range2((range2 >= 24))) .* ...
    (((7/8) * exp(-j/3)).^(range2((range2 >= 24)) - 20) - ((7/8) * exp(-j/3)).^(range2((range2 >= 24)) - 1)) ...
    / (1 - (7/8) * exp(-j/3));
% Plot -3 * Im{y3[n]}
figure;
stem((-10:50), -3 * imag(y3_2(1:61)), 'filled', '.r');  % Plot -3 times the imaginary part of y3[n]
xlabel('n');
ylabel('Y_4[n]= -3 * Im{y_3[n]}');
title('Analytical Result for Y_4[n]');
grid on;

