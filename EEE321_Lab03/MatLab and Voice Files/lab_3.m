[baloon_imp, Hz] = audioread('C:\Users\atato\Odeon.m4a');
%sound(baloon_imp, Hz);
baloon_imp = baloon_imp(8000:end);

figure;
plot(baloon_imp);
title('Plot of Impulse Response');
xlabel('Sample Number');
ylabel('Amplitude');

[Music, Hz] = audioread('C:\Users\atato\mozart_vl1_6.mp3');
%sound(Music, Hz);
%sound(LTIsystem, Fs);

figure;
plot(Music);
title('Plot of the Input Music');
xlabel('Sample Number');
ylabel('Amplitude');


final_result = conv(baloon_imp, Music);
sound(final_result, Hz);
save('final_result.mat', 'final_result');
load final_result.mat final_result

filename = 'output.m4a';
audiowrite(filename, final_result, Hz);
figure;
plot(final_result);
title('Plot of Output');
xlabel('Sample Number');
ylabel('Amplitude');