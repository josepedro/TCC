peaks_120 = frequency_meter('metronomo/120bpm.wav');
peaks_60 = frequency_meter('metronomo/60bpm.wav');
if (peaks_60 == 60)
	result_60 = 'true'
else
	result_60 = 'false'
end
