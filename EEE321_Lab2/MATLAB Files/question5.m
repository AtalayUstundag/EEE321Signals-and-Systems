% Numerical Result
range1 = 100;
range2 = -range1:1:range1;
uh = zeros(size(range2));
uh(range2 >= 4) = 1;
impulse = (7/8).^range2 .* uh;
r = (-range1/2):1:(range1/2);
x5 = zeros(size(r));
x5((r <= 20) & (r >= 2)) = 2*cos((2:20).*1/3);
y5 = zeros(size(r));
for k = -(range1/2):(range1/2)
    a = impulse(r-k+range1+1) .* x5(k+(range1/2)+1);
    y5 = y5 + a;
end
% Plot Numerical Result
figure;  % Open a new figure window
stem(-10:50,y5(41:101),'filled');
xlabel('n');
ylabel('y[n] = h[n]*x5[n]');
title('Numerical Result of Y_5[n]');
grid on;

range2 = -10:100; 
y3_2 = zeros(size(range2));  
j = sqrt(-1);  

ind1 = (range2 >= 6) & (range2 <= 24);
y3_2(ind1) = (exp(j/3).^range2(ind1)) .* ...
    (((7/8) * exp(-j/3)).^4 - ((7/8) * exp(-j/3)).^(range2(ind1) - 1)) ...
    / (1 - (7/8) * exp(-j/3));

ind2 = (range2 > 24);
y3_2(ind2) = (exp(j/3).^range2(ind2)) .* ...
    (((7/8) * exp(-j/3)).^(range2(ind2) - 20) - ((7/8) * exp(-j/3)).^(range2(ind2) - 1)) ...
    / (1 - (7/8) * exp(-j/3));
y3_re = 2 * real(y3_2);
figure;
stem((-10:50), y3_re(1:61), 'filled', '.r');  % 2 * Re{y3[n]} sinyalini yeşil renkte çiz
xlabel('n');
ylabel('2 \cdot Re\{y3[n]\}');
title('Analytical Result for Y_5[n]');
grid on;
