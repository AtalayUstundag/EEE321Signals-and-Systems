%1.a
n = -40:1:319;
ya = zeros(size(n));
for i = n
    dum = mod(i/10,18);% T/10 da sample ,period 18 
    if (dum >= 7)&&(dum < 10)
        ya(i+41) = 8;% m 41 tane değer aldı
    end
end

%stem(n,ya,'.r');
%xlabel('n')
%ylabel('y[n]')
%title('Plot of sampled version of ya(t) with Ts =1/10 ; y[n]')

%1.c

m = -20:1:20;  
a = zeros(size(m)); 

a(21) = 4/3; 

for k = 1:length(m)
    if m(k) ~= 0
        a(k) = (4/(1i*pi*m(k)))*(exp(1i*22*pi*m(k)/18) - exp(1i*16*pi*m(k)/18)); %ak katsayılarım elle bulduğum
    end
end

%stem(m*2*pi/18, a , 'filled', 'k.');
%xlabel('rad/s');
%ylabel('ak');
%title('Spectrum plot of the real part of ya(t)');
%grid on;


%a_imag = imag(a);

%figure;
%stem(m * 2 * pi / 18, a_imag, 'filled', 'r.');
%xlabel('Frequency (rad/s)');
%ylabel('Im(a_k)');
%title('Imaginary Part of the Spectrum of y_a(t)');
%grid on;


%1.d

n = -40:319;  
N = 150;      
a = zeros(1, 2*N + 1);  
a(N + 1) = 4/3; 

for k = -N:N
    if k ~= 0
        a(k + N + 1) = (4 / (1i * pi * k)) * (exp(1i * 22 * pi * k / 18) - exp(1i * 16 * pi * k / 18));
    end
end

zn = zeros(1, length(n));  
for k = -N:N
    zn = zn + a(k + N + 1) * exp(1i * pi * k * n / 81);  %Zn
end

%plot(n , real(zn), 'k','LineWidth', 1.5);  
%title('Plot of z_N[n] when N is 150');
%ylabel('z_{150}[n]');
%xlabel('n');
%xline(0);
%yline(0);
%grid on;

n = -40:319;  
N = 75;      
a = zeros(1, 2*N + 1);  
a(N + 1) = 4/3;  

for k = -N:N
    if k ~= 0
        a(k + N + 1) = (4 / (1i * pi * k)) * (exp(1i * 22 * pi * k / 18) - exp(1i * 16 * pi * k / 18));
    end
end

zn = zeros(1, length(n)); 
for k = -N:N
    zn = zn + a(k + N + 1) * exp(1i * pi * k * n / 81);  
end

%plot(n , real(zn), 'k', 'LineWidth', 1.5);  
%title('Plot of z_N[n] when N is 75');
%ylabel('z_{75}[n]');
%xlabel('n');
%xline(0);
%yline(0);
%grid on;

n = -40:319;  
N = 30;      
a = zeros(1, 2*N + 1);  
a(N + 1) = 4/3;  

for k = -N:N
    if k ~= 0
        a(k + N + 1) = (4 / (1i * pi * k)) * (exp(1i * 22 * pi * k / 18) - exp(1i * 16 * pi * k / 18));
    end
end

zn = zeros(1, length(n)); 
for k = -N:N
    zn = zn + a(k + N + 1) * exp(1i * pi * k * n / 81);  
end

%figure;
%plot(n , real(zn), 'k', 'LineWidth', 1.5);  
%title('Plot of z_N[n] when N is 30');
%ylabel('z_{30}[n]');
%xlabel('n');
%xline(0);
%yline(0);
%grid on;

n = -40:319;  
N = 5;      
a = zeros(1, 2*N + 1);  
a(N + 1) = 4/3;  

for k = -N:N
    if k ~= 0
        a(k + N + 1) = (4 / (1i * pi * k)) * (exp(1i * 22 * pi * k / 18) - exp(1i * 16 * pi * k / 18));
    end
end

zn = zeros(1, length(n)); 
for k = -N:N
    zn = zn + a(k + N + 1) * exp(1i * pi * k * n / 81);  
end

%figure;
%plot(n , real(zn), 'k', 'LineWidth', 1.5);  
%title('Plot of z_N[n] when N is 5');
%ylabel('z_{5}[n]');
%xlabel('n');
%xline(0);
%yline(0);
%grid on;


n = -40:319;  
N = 3;      
a = zeros(1, 2*N + 1);  
a(N + 1) = 4/3;  

for k = -N:N
    if k ~= 0
        a(k + N + 1) = (4 / (1i * pi * k)) * (exp(1i * 22 * pi * k / 18) - exp(1i * 16 * pi * k / 18));
    end
end

zn = zeros(1, length(n)); 
for k = -N:N
    zn = zn + a(k + N + 1) * exp(1i * pi * k * n / 81);  
end

%figure;
%plot(n, real(zn),  'k','LineWidth', 1.5);  
%title('Plot of z_N[n] when N is 3');
%ylabel('z_{3}[n]');
%xlabel('n');
%xline(0);
%line(0);
%grid on;

n = -40:319;  
N = 1;      
a = zeros(1, 2*N + 1);  
a(N + 1) = 4/3;  

for k = -N:N
    if k ~= 0
        a(k + N + 1) = (4 / (1i * pi * k)) * (exp(1i * 22 * pi * k / 18) - exp(1i * 16 * pi * k / 18));
    end
end

zn = zeros(1, length(n)); 
for k = -N:N
    zn = zn + a(k + N + 1) * exp(1i * pi * k * n / 81);  
end

%figure;
%plot(n , real(zn), ss, 'LineWidth', 1.5);  
%title('Plot of z_N[n] when N is 1');
%ylabel('z_{1}[n]');
%ylim([-2 10]);
%xlabel('n');
%xline(0);
%yline(0);
%grid on;

%0 harmonic

figure;
ylim([-2 2]);
stem(n,ones(1,length(n))*3/3,'k.');
title('0th Harmonic of y_a(t)');
ylabel('0th Harmonic');xlabel('t');xline(0);yline(0);
ylim([-2 2]);
%1. hrmonik

n = -40:319;


k = 1; 
f_first_harmonic = a(k + N + 1) * exp(1i * pi * k * n / 81);

figure;
ylim([-2 2]);
stem(n / 9, real(f_first_harmonic), 'k.');
title('1st Harmonic of y_a(t)');
ylabel('1st Harmonic');
xlabel('t');
xline(0);
yline(0);
grid on;
ylim([-2 2]);
%2.harmonic
n = -40:319;
N = 2;  
a = zeros(1, 2 * N + 1);
a(N + 1) = 4/3;


for k = -N:N
    if k ~= 0
        a(k + N + 1) = (4 / (1i * pi * k)) * (exp(1i * 22 * pi * k / 18) - exp(1i * 16 * pi * k / 18));
    end
end


k = 2;
f_second_harmonic = a(k + N + 1) * exp(1i * pi * k * n / 81);

figure;
ylim([-2 2]);
stem(n / 9, real(f_second_harmonic), 'k.');
title('2nd Harmonic of y_a(t)');
ylabel('2nd Harmonic');
xlabel('t');
xline(0);
yline(0);
grid on;
ylim([-2 2]);
%3.har

n = -40:319;
N = 3;  
a = zeros(1, 2 * N + 1);
a(N + 1) = 4 / 3;


for k = -N:N
    if k ~= 0
        a(k + N + 1) = (4 / (1i * pi * k)) * (exp(1i * 22 * pi * k / 18) - exp(1i * 16 * pi * k / 18));
    end
end


k = 3;
f_third_harmonic = a(k + N + 1) * exp(1i * pi * k * n / 81);

figure;
ylim([-2 2]);
stem(n / 9, real(f_third_harmonic), 'k.');
title('3rd Harmonic of y_a(t)');
ylabel('3rd Harmonic');
xlabel('t');
xline(0);
yline(0);
grid on;
ylim([-2 2]);
