function fft_signal = see_frequencies(signal, fs)
	frequencies = [0:length(signal) - 1];
	frequencies = frequencies*fs/length(signal);
	fft_signal = abs(fft(signal));
	plot(frequencies(1:(length(signal)/2)), fft_signal(1:(length(signal))/2));
