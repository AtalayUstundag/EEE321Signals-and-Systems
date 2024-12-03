% Numerical Result
range1 = 100;
range2 = -range1:1:range1;
uh = zeros(size(range2));
uh(range2 >= 4) = 1;
impulse = (7/8).^range2 .* uh;
r = (-range1/2):1:(range1/2);
x1 = zeros(size(r));
x1((r <= 8) & (r >= 0)) = 3;
y1 = zeros(size(r));
for k = -(range1/2):(range1/2)
    a = impulse(r-k+range1+1) .* x1(k+(range1/2)+1);
    y1 = y1 + a;
end

% Plot Numerical Result
figure;  
stem(-10:50, y1(41:101), 'filled');
xlabel('n');
ylabel('y[n] = h[n]*x1[n]');
title('Numerical Result of y_1[n]');
grid on;

% Analytic Result
range2 = -10:100;
y1_2 = zeros(size(range2));
y1_2((range2 >= 4) & (range2 <= 12)) = 24 * ((7/8).^4 - (7/8).^(5:13));
y1_2((range2 >= 12)) = 24 * ((7/8).^(4:92) - (7/8).^(13:101));

% Plot Analytic Result
figure;  
stem((-10:50), y1_2(1:61), 'filled', 'r');
xlabel('n');
ylabel('y[n] = T[x1[n]]');
title('Analytical Result of y_1[n]');
grid on;