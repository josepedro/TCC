function number_of_peaks = frequency_meter(file_path)
    % opening the file
    file = open(file_path);
    %file = open('metronomo/120bpm.wav');
    %file = open('metronomo/60bpm.wav');
    %file = open('metronomo/240bpm.wav');
    %file = open('oh_darling.wav');
    %file = open('smoke_on_the_water.wav');
    %file = open('i_can_see.wav');
    file.data = file.data(1 : file.fs*60);
    %file.data = file.data(file.fs*60*4 : file.fs*60*5);
    bpm_music = abs(file.data);
    %figure
    %1
    %plot(bpm_music)

    %filtering the pulses of minor energy
    signal_filtered = filter_signal(bpm_music);

    % Building array with means movies
    signal_pulses = decrease_resolution(signal_filtered, file.fs, 10);

    % Beginnnig the correlation
    array_correlation = correlate_moments(signal_pulses);
	figure
    %1
    plot(array_correlation)


    % Graph with correlation done! Now I will calculate the number of peaks
    array_peaks = filter_peak(signal_pulses);

    peaks = findpeaks(array_peaks);

    number_of_peaks = length(peaks) + 1; %nao sei porque tenho que acrescentar mais 1

    %analizar cada minuto da musica e usar o espaçamento de ponto a ponto para contar os bpm
