% code to measure the bpm of music
function number_of_peaks = bpm_meter_music(file_path)
    % opening the file
    file = open(file_path);
    minutes_in_music = fix(((length(file.data))/file.fs)/60);

    window_begin = 1;
    window_end = file.fs * 60;
    for minute = 1 : minutes_in_music
    	
    	data = file.data(window_begin : window_end);
    	bpm_music = abs(data);
    	%figure
    	%1
    	%plot(bpm_music)

    	%filtering the pulses of minor energy
    	signal_filtered = filter_signal(bpm_music);

    	% Building array with means movies
    	signal_pulses = decrease_resolution(signal_filtered, file.fs, 1);

    	% Beginnnig the correlation
    	array_correlation = correlate_moments(signal_pulses);

    	% Graph with correlation done! Now I will calculate the number of peaks
   		array_peaks = filter_peak(signal_pulses);

   		peaks = findpeaks(array_peaks);

   		number_of_peaks = length(peaks) + 1 %nao sei porque tenho que acrescentar mais 1

    	window_begin = window_begin + file.fs * 60;
    	window_end = window_end + file.fs * 60;
    end
    %analizar cada minuto da musica e usar o espaçamento de ponto a ponto para contar os bpm