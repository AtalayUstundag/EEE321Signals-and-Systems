n = 0:127;
id = 7;
x = cos(0.39 * pi * n );
omega=0.39 * pi;
SignalFile = fopen('SignalFileSAS7.txt','w');  
fprintf(SignalFile, '%f\n', x);           
fclose(SignalFile);                        
SignalFile = fopen('SignalFileSAS7.txt','r');  
SignalValue = fscanf(SignalFile, '%f');          
fclose(SignalFile);                      
xof3 = SignalValue(4);     
xof7 = SignalValue(8);     
xof114 = SignalValue(115); 
xof127 = SignalValue(128);  
fprintf('ws = %f radian \n',omega);
fprintf('x%d[3] is %f\n',id, xof3);
fprintf('x%d[7] is %f\n',id, xof7);
fprintf('x%d[114] is %f\n',id, xof114);
fprintf('x%d[127] is %f\n',id, xof127);
figure;
stem(n, x, 'filled');  
title('Graph of x_7[n] for n \in [0, 127]');
xlabel('n');
ylabel('x_7[n]');
grid on;