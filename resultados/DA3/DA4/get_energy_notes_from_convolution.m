function set_of_notes_time = get_energy_notes_from_convolution(set_of_windows_signals, fs, time, set_of_notes_time)

	freqs = [32.703 34.648 36.708 38.891 41.203 43.654 46.249 48.999 51.913 55 58.270 61.735 ...
		 65.406 69.296 73.416 77.782 82.407 87.307 92.499 97.999 103.83 110 116.54 123.47 ...
		 130.81 138.59 146.83 155.56 164.81 174.61 185 196 207.65 220 233.08 246.94 ...
		 261.63 277.18 293.66 311.13 329.63 349.23 369.99 392 415.30 440 466.16 493.88 ...
		 523.25 554.37 587.33 622.25 659.26 698.46 739.99 783.99 830.61 880 932.33 987.77];

	% allocate struct to spectrum
    set_of_spectrums = {};
    sampling = fs/21;

    for part_signal_iterator = 1:5
    	% make downsample to put frequency max in 1050 Hz
        signal = downsample(set_of_windows_signals{part_signal_iterator}, 21);
        
        % get a set of notes in time
        notes_time = set_of_notes_time{part_signal_iterator};

        % set configurations of notes filters
		dt = 1/sampling;
		duration = 1;
		times = [0:dt:duration];

		for note = 1:length(freqs)
			notes_time(time, note) = sum((conv(sin(2*pi*freqs(note)*times),signal).^2));
		end

		set_of_notes_time{part_signal_iterator} = notes_time;
    end