function [SINAL,f]=rf(sinal,fs)
fn=fs/2;
f=(0:length(sinal)-1)*fs/length(sinal);
t = fft(sinal);
SINAL=sqrt(t.*conj(t));
SINAL=SINAL/max(SINAL);
plot(f(1:round(length(f)/2)),SINAL(1:round(length(f)/2)));
%stem(f(1:round(length(f)/2)),SINAL(1:round(length(f)/2)));
ylabel('Amplitude Normalizada');
xlabel('Frequencia [Hz]')
title('Resposta em Freqüência')
%grid

