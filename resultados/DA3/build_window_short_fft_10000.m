function signal_time = build_window_short_fft_10000(signal, time, fs, window_time)
	signal = [signal(:)];
	signal_time = signal(1+((time-1)*window_time):time*window_time);
    window = blackman(length(signal_time));
    signal_time = window.*signal_time;