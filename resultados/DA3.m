function [respfreq, notes_time] = DA3(signal, fs)

% building musical notes filters
notes(12, 1050) = 0;

g1 = 0.01;
g2 = 0.05;
g3 = 0.1;
g4 = 0.4;
g5 = 0.8;
g6 = 1;

notes(10, 435) = g1;
notes(10, 436) = g2;
notes(10, 437) = g3;
notes(10, 438) = g4;
notes(10, 439) = g5;
notes(10, 440) = g6;
notes(10, 441) = g5;
notes(10, 442) = g4;
notes(10, 443) = g3;
notes(10, 444) = g2;
notes(10, 445) = g1;

% begin to analyse music
time_seconds_total = length(signal)/fs;
notes_time(1:time_seconds_total) = 0;
for time = 1:time_seconds_total
    signal_time = signal(1+((time-1)*fs):time*fs);
    
    % make downsample to put frequency max in 1050 Hz
    signal_time = downsample(signal_time, 21);
    fs_time = fs/21;

    % get fourier transform
    module_fft = abs(fft(signal_time));
    respfreq(1:fs_time) = 0;
    window_mean = length(signal_time)/fs_time;
    for frequency = 1:fs_time
        respfreq(frequency) = sum(module_fft(1+((frequency-1)*window_mean):frequency*window_mean))/window_mean;
    end

    respfreq = respfreq(1:fix(length(respfreq)/2));

    % get energy of note
    notes_time(time) = sum(respfreq.*notes(10,:));

end




