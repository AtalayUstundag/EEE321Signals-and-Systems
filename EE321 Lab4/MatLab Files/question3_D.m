% Parameters
T = 18;            % Period of the signal (in seconds)
omega0 = pi/9;     % Fundamental angular frequency
Ts = 0.1;          % Sampling period (in seconds)
N =1;           % Number of harmonics on each side
n = -40:319;       % Sample indices

% Initialize zN for all n
zN = zeros(size(n));

% Precompute Fourier coefficients a_k for k from -N to N
a_coeff = zeros(1, 2*N + 1);  % Array to store coefficients a_k
k_values = -N:N;              % k indices from -N to N

% Calculate Fourier coefficients a_k
for idx = 1:length(k_values)
    k = k_values(idx);
    if k == 0
        a_coeff(idx) = 5/pi;  % a_0
    elseif k == 1 || k == -1
        a_coeff(idx) = 5/4;   % a_1 for both positive and negative k
    elseif mod(k, 2) == 0
        % Even harmonic k
        a_coeff(idx) = (5/pi) * (cos(pi * k / 2)) / (1 - k^2);
    else
        % Odd harmonic k >= 3
        a_coeff(idx) = 0;
    end
end

% Compute zN[n] using the partial sum of harmonics
for i = 1:length(n)
    zN(i) = sum(a_coeff .* exp(1j * omega0 * k_values * n(i) * Ts));
end

% Plot the real part of zN[n]
figure;
plot(n, real(zN),'b', 'LineWidth', 1.5);
xlabel('n');
ylabel('z_N[n]');
title('z_N[n] for N=1');
grid on;
xlim([-40, 319]);