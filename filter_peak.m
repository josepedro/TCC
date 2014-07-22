function array_peaks = filter_peak(signal)
	standard_deviation = std(signal);
	mean_signal_pulses = mean(signal);
	array_peaks(length(signal)) = 0;
	for count = 1 : length(signal)
	    if(signal(count) > mean_signal_pulses)
	        array_peaks(count) = signal(count);
	    end
	end
	figure
	%5
	stem(array_peaks)