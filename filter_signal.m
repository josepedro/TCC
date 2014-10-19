% Filter to drop out the pulses with low energy (use mean and standard deviation)
function signal_filtered = filter_signal(signal)
	standard_deviation = std(signal);
	mean_signal_pulses = mean(signal);
	signal_filtered(length(signal)) = 0;
	for slot = 1:length(signal)
	    if(signal(slot) > mean_signal_pulses + standard_deviation)
	        signal_filtered(slot) = signal(slot);
	    end
	end
	%figure
	%2
	%plot(signal_filtered_1)
