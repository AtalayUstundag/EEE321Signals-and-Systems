% Numerical Result
range1 = 100;
range2 = -range1:1:range1;
uh = zeros(size(range2));
uh(range2 >= 4) = 1;
impulse = (7/8).^range2 .* uh;
r = (-range1/2):1:(range1/2);

x1 = zeros(size(r));
x1((r <= 8) & (r >= 0)) = 3;

x2 = zeros(size(r));
x2((r <= 4) & (r >= 0)) = 3;
x2((r <= 8) & (r >= 5)) = -3;
x2((r <= 13) & (r >= 9)) = -6;

y6 = zeros(size(r));
x6=x1+2*1i*x2;

for k = -(range1/2):(range1/2)
    a = impulse(r-k+range1+1) .* x6(k+(range1/2)+1);
    y6 = y6 + a;
end

% Plot Numerical Result
figure;  % Open a new figure window
stem(-10:50,real(y6(41:101)),'filled');
xlabel('n');
ylabel('Real Part of y[n] = h[n]*x6[n]');
title('Numerical Result for Real Part of y_6[n]');
grid on;

figure;  % Open a new figure window
stem(-10:50,imag(y6(41:101)),'filled');
xlabel('n');
ylabel('Imaginary Part of y[n] = h[n]*x6[n]');
title('Numerical Result for Imaginary Part of y_6[n]');
grid on;

% Analytic Result
range2 = -10:100;
y1_2 = zeros(size(range2));
y1_2((range2 >= 4) & (range2 <= 12)) = 24 * ((7/8).^4 - (7/8).^(5:13));
y1_2((range2 >= 12)) = 24 * ((7/8).^(4:92) - (7/8).^(13:101));

range2 = -10:100;
y2_2 = zeros(size(range2));
y2_2((range2 >= 4) & (range2 <= 9)) = 24 * ((7/8).^4 - (7/8).^(5:10));
y2_2((range2 >= 9) & (range2 <= 12)) = 24 * ((7/8).^4 - (7/8).^(10:13))-48*((7/8).^4 - (7/8).^(5:8));
y2_2((range2 >= 12) & (range2 <= 17)) = 24 * ((7/8).^(4:9) - (7/8).^(13:18))-48*((7/8).^4 - (7/8).^(8:13));
y2_2(range2 >= 17) = 24 * ((7/8).^(9:92) - (7/8).^(18:101))-48*((7/8).^(4:87) - (7/8).^(13:96));

% Plot Analytic Result
figure;
stem(-10:50,y1_2(1:61), "filled",'.r');
xlabel('n');
ylabel('Real Part of y[n]=T[x[6]]');
title('Analytical Result for Real Part of y_6[n]');
grid on;


figure;
stem(-10:50,2*y2_2(1:61), "filled",'.r');
xlabel('n');
ylabel('Imaginary Part of y[n]=T[x[6]]');
title('Analytical Result for Imaginary Part of y_6[n]');
grid on;


