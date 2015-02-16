
function signal_time = build_window_short_fft(signal, time, fs)
	signal = [signal(:)];
	signal_time = signal(1+((time-1)*fs):time*fs);
    window = blackman(length(signal_time));
    signal_time = window.*signal_time;