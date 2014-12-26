% Decreasing the resolution to be more accessible see the peaks
function signal_pulses = decrease_resolution(signal, sampler, resolution)

	window_size = sampler/resolution
	counter = 1;
	length_pulses = fix(length(signal)/window_size);
	signal_pulses(length_pulses) = 0;

	for position = 1 : window_size : length_pulses * window_size
	    signal_pulses(counter) = mean(signal(position : position + window_size - 1));
	    counter = counter + 1;
	end

length(signal_pulses)

	% figure
	% 3
	% stem(signal_pulses);
