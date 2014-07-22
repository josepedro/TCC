clear all
%clc
% opening the file
%file = open('metronomo/120bpm.wav');
%file = open('metronomo/60bpm.wav');
%file = open('metronomo/240bpm.wav');
file = open('oh_darling.wav');
%file = open('i_can_see.wav');
file.data = file.data(1 : file.fs*60);
%file.data = file.data(file.fs*60*1 : file.fs*60*2);
bpm_music = abs(file.data);

% initializing
pulses_per_second = file.fs/10; %size of window

%filtering the max pulses
standard_deviation = std(bpm_music);
mean_signal_pulses = mean(bpm_music);
signal_filtered_1(length(bpm_music)) = 0;
for slot = 1:length(bpm_music)
    if(bpm_music(slot) > mean_signal_pulses + standard_deviation)
        signal_filtered_1(slot) = bpm_music(slot);
    end
end

%Building array with means movies
window_size = pulses_per_second;
counter = 1;
length_pulses = fix(length(signal_filtered_1)/window_size);
signal_pulses(length_pulses) = 0;
for position = 1 : window_size : length_pulses * window_size
    signal_pulses(counter) = mean(signal_filtered_1(position : position + window_size - 1)); 
    counter = counter + 1;
end

%show signal filtered and reduced
figure
stem(signal_pulses);

length_bpm_music = length(bpm_music);
length_signal_filtered = length(signal_filtered_1);
length_signal_pulse = length(signal_pulses);

% Beginnnig the correlation
signal_filtered_2 = signal_pulses;
pass = 1;
length_final_correlation = length(signal_filtered_2);
array_zeros_concatenate(length_final_correlation) = 0;
signal_to_pass = horzcat(signal_filtered_2, signal_filtered_2);
array_correlation = array_zeros_concatenate;
length_final_correlation;
length(signal_to_pass(length_final_correlation : length_final_correlation*2));
deslocation = 0;
for position = 1 : pass : length_final_correlation
    correlation = corrcoef(signal_filtered_2, signal_to_pass(length_final_correlation - deslocation : length_final_correlation*2 - deslocation - 1));
    array_correlation(position) = correlation(1,2);
    deslocation = deslocation + 1;
end 

% Graph with correlation done! Now I will calculate the number of peaks
standard_deviation = std(array_correlation);
mean_signal_pulses = mean(array_correlation);
array_peaks(length(array_correlation)) = 0;
for count = 1 : length(array_correlation)
    if(array_correlation(count) > mean_signal_pulses + standard_deviation)
        array_peaks(count) = array_correlation(count);
    end
end

peaks = findpeaks(array_peaks);

number_of_peaks = length(peaks) + 1 %nao sei porque tenho que acrescentar mais 1

figure
plot(array_correlation);