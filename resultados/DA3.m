function [notes_time, chords_time, chord_pitch] = DA3(signal, fs)

load_notes;
load_chords;

dictionary_chords = { 'C M', 'C m', 'C aum', 'C dim', ...
     'C# M', 'C# m', 'C# aum', 'C# dim', 'D M', 'D m', 'D aum', 'D dim', ...
     'Eb M', 'Eb m', 'Eb aum', 'Eb dim', 'E M', 'E m', 'E aum', 'E dim', ...
     'F M', 'F m', 'F aum', 'F dim', 'F# M', 'F# m', 'F# aum', 'F# dim', ...
     'G M', 'G m', 'G aum', 'G dim', 'G# M', 'G# m', 'G# aum', 'G# dim', ...
     'A M', 'A m', 'A aum', 'A dim', 'Bb M', 'Bb m', 'Bb aum', 'Bb dim', ...
     'B M', 'B m', 'B aum', 'B dim' };


% begin to analyse music
time_seconds_total = fix((length(signal)/fs));
notes_time(time_seconds_total, 60) = 0;
chords_time = {};
for time = 1:time_seconds_total

    % building a window to short fft 
    signal_time = signal(1+((time-1)*fs):time*fs);
    window = blackman(length(signal_time));
    signal_time = window'.*signal_time;
    
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

    % get energy of notes
    for note = 1:60
        notes_time(time, note) = sum(respfreq.*notes(note,:));    
    end

    % apply threshold
    

    % get energy of chords
    energy_chords(1:48) = 0;
    for chord = 1:48
        energy_chords(chord) = sum(notes_time(time, :).*chords(chord,:));
    end

    chords_time{time} = dictionary_chords{find(energy_chords==max(energy_chords))};

end

notes_energy_total = notes_time(1,:);
for time = 2:time_seconds_total
    notes_energy_total = notes_energy_total + notes_time(time,:);
end

energy_chords(1:48) = 0;
for chord = 1:48
    energy_chords(chord) = sum(notes_energy_total.*chords(chord,:));
end

chord_pitch = dictionary_chords{find(energy_chords==max(energy_chords))};