% get frequency spectrum
function frequency_spectrum = get_frequency_spectrum(signal, sampler)

	% make downsample to put frequency max in 1050 Hz
    signal_time = downsample(signal, 21);
    fs_time = sampler/21;

    % doing fourier transform
	module_fft = abs(fft(signal_time));
    respfreq(1:fs_time) = 0;
    window_mean = length(signal_time)/fs_time;
    for frequency = 1:fs_time
        respfreq(frequency) = sum(module_fft(1+((frequency-1)*window_mean):frequency*window_mean))/window_mean;
    end

    frequency_spectrum = respfreq(1:fix(length(respfreq)/2));