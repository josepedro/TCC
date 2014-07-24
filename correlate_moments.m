% Correlating common or moments are periodics on the signal
function array_correlated = correlate_moments(signal)
	pass = 1;
	length_final_correlation = length(signal);
	signal_to_pass = horzcat(signal, signal);
	array_correlation(length_final_correlation) = 0;
	deslocation = 0;
	for position = 1 : pass : length_final_correlation
	    correlation = corrcoef(signal, signal_to_pass(length_final_correlation - deslocation : length_final_correlation*2 - deslocation - 1));
	    array_correlated(position) = correlation(1,2);
	    deslocation = deslocation + 1;
	end
	%figure
	%4
	%stem(array_correlated)