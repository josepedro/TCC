energy_signal_down = downsample(energy_signal, fs/100);
pass = 1000;
for i = 1:pass:length(energy_signal) - pass
  energy_signal_mean(i) = mean(energy_signal(i:i+(pass-1)));
end

energy_signal_down = energy_signal_down';
array_transition = [energy_signal_down zeros(1, length(energy_signal_down))];
correlation_moments = zeros(1, length(energy_signal_down));
for i = 1:length(energy_signal_down)
  correlation = corrcoef(array_transition(i:(length(energy_signal_down)-1+i)), energy_signal_down);
  correlation_moments(i) = correlation(1,2);
end
