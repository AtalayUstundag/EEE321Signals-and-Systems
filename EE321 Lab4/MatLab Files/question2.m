Ts = 1/10;            
n = -40:319;          
t = n * Ts;           
T_period = 9;         
omega_0 = 2 * pi / T_period;  

% Discrete signal
y = abs(5 * cos(pi * t / 9));

% % Plot the discrete signal y[n]
 %figure;
 %stem(n, y, '.g');
 %xlabel('n');
 %ylabel('y[n]');
% title('Plot of ya(t) with Ts =1/10 ; y[n]');
 %grid on;

% Fourier coefficients a_k
a0 = 10 / pi;  
N_max = 150;   
ak = zeros(1, 2 * N_max + 1);  

% Compute a_k for k = -N_max to N_max
for k = -N_max:N_max
    if k ~= 0
        ak(k + N_max + 1) = (5 / pi) * (sin((pi / 2) - pi * k) / (1 - 2 * k) + ...
                                        sin((pi / 2) + pi * k) / (1 + 2 * k));
    else
        ak(k + N_max + 1) = a0;
    end
end
% 
 % Plot Fourier series coefficients a_k for k = -40 to 40
 %figure;
%stem(-40:40, ak(N_max-40+1:N_max+40+1), 'filled', '.g');  
%xlabel('Frequency (rad/s)');
%ylabel('a_k');
 %title('Spectrum of Coefficients of a_k');
%grid on;

% Array of N values for different reconstructed signals
 N_values = [150, 75, 30, 5, 3, 1];
 
% Plot z_N[n] for different values of N, each in a separate figure
 for i = 1:length(N_values)
    N = N_values(i);
   zN = a0 * ones(size(n));  
 
     % Compute z_N[n] using Fourier series
     for k = 1:N
         zN = zN + 2 * ak(k + N_max + 1) * cos(omega_0 * k * n * Ts);
     end
 
    %  Plot z_N[n] for the current N value in a new figure
   %  figure;
   %  plot(t, zN,'k', 'LineWidth', 1.5);
   %  xlabel('t');
    % ylabel(['z_{N}[n] for N = ', num2str(N)]);
    % title(['Plot of z_N[n] when N = ', num2str(N)]);
    % grid on;
 end
% 

zeroth_harmonic = a0 * ones(size(t));
figure;
plot(t, zeroth_harmonic, 'k','LineWidth', 1.5);
xlabel('Time (s)');
ylabel('Amplitude');
ylim([-3 3]);
title('0th Harmonic (DC Component) of y_a (t)');
grid on;    
ylim([-5 5]);

k = 1;
first_harmonic = 2 * ak(k + N_max + 1) * cos(omega_0 * k * t);
figure;
plot(t, first_harmonic, 'k','LineWidth', 1.5);
xlabel('Time (s)');
ylabel('Amplitude');

title('First Harmonic of y_a (t)');
grid on;
ylim([-5 5]);


k = 2;
second_harmonic = 2 * ak(k + N_max + 1) * cos(omega_0 * k * t);
figure;
plot(t, second_harmonic, 'k','LineWidth', 1.5);
xlabel('Time (s)');
ylabel('Amplitude');
title('Second Harmonic of y_a (t)');
grid on;
ylim([-5 5]);





k = 3;
third_harmonic = 2 * ak(k + N_max + 1) * cos(omega_0 * k * t);
figure;
plot(t, third_harmonic, 'k','LineWidth', 1.5);
xlabel('Time (s)');
ylabel('Amplitude');
title('Third Harmonic of y_a (t)');
grid on;
ylim([-5 5]);