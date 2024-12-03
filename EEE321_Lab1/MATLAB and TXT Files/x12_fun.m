n = 0:127;
id = 12;
x = cos(0.9*n +0.3);
omega= 0.9;
SignalFile = fopen('SignalFileSAS12.txt','w');  
fprintf(SignalFile, '%f\n', x);           
fclose(SignalFile);                        
SignalFile = fopen('SignalFileSAS12.txt','r');  
SignalValue = fscanf(SignalFile, '%f');          
fclose(SignalFile);                      
xof3 = SignalValue(4);     
xof7 = SignalValue(8);     
xof114 = SignalValue(115); 
xof127 = SignalValue(128);  
fprintf('w = %f radian \n',omega);
fprintf('x%d[3] is %f\n',id, xof3);
fprintf('x%d[7] is %f\n',id, xof7);
fprintf('x%d[114] is %f\n',id, xof114);
fprintf('x%d[127] is %f\n',id, xof127);
figure;
stem(n, x, 'filled');  
title('Graph of x_1_2[n] for n \in [0, 127]');
xlabel('n');
ylabel('x_1_2[n]');
grid on;