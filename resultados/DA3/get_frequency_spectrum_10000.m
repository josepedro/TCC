
function frequency_spectrum = get_frequency_spectrum_10000(signal, sampling)

    frequencies=(0:length(signal)-1)*sampling/length(signal);
    module_fft = abs(fft(signal));
    f_round = round(frequencies);
    frequencies_energy(max(f_round)) = 0;
    for slot = 2:length(f_round)
        frequencies_energy(f_round(slot)) = module_fft(slot);
    end
    frequency_spectrum = frequencies_energy(1:end/2);