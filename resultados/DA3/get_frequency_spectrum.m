% get frequency spectrum
function frequency_spectrum = get_frequency_spectrum(signal, sampling)

	% make downsample to put frequency max in 1050 Hz
    signal = downsample(signal, 21);
    sampling = sampling/21;

    % doing fourier transform
    frequencies=(0:length(signal)-1)*sampling/length(signal);
    module_fft = abs(fft(signal));
    f_round = round(frequencies);
    frequencies_energy(max(f_round)) = 0;
    for slot = 2:length(f_round)
        frequencies_energy(f_round(slot)) = module_fft(slot);
    end
    frequency_spectrum = frequencies_energy(1:fix(end/2));