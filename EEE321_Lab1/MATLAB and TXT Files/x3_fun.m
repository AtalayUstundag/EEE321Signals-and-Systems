n = 0:127;
id = 3;
x = cos(-1.8 * pi * n );
omega= 1.8 *pi;
SignalFile = fopen('SignalFileSAS3.txt','w');  
fprintf(SignalFile, '%f\n', x);           
fclose(SignalFile);                        
SignalFile = fopen('SignalFileSAS3.txt','r');  
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
title('Graph of x_3[n] for n \in [0, 127]');
xlabel('n');
ylabel('x_3[n]');
grid on;