function [notes_time_44100, chords_time_44100, chord_pitch_44100] = DA3(signal, fs)
    [notes_time_44100, chords_time_44100, chord_pitch_44100, chord_pitch_number] = DA3_window_44100(signal, fs);
    [notes_time_10000, chords_time_10000] = DA3_window_10000(signal, fs, chord_pitch_number);
    %chords_time_44100(1:10)
    %chords_time_10000(1:40)

end

function [notes_time, chords_time, chord_pitch, chord_pitch_number] = DA3_window_44100(signal, fs)
    dictionary_chords = { 'C M', 'C m', 'C aum', 'C dim', ...
     'C# M', 'C# m', 'C# aum', 'C# dim', 'D M', 'D m', 'D aum', 'D dim', ...
     'Eb M', 'Eb m', 'Eb aum', 'Eb dim', 'E M', 'E m', 'E aum', 'E dim', ...
     'F M', 'F m', 'F aum', 'F dim', 'F# M', 'F# m', 'F# aum', 'F# dim', ...
     'G M', 'G m', 'G aum', 'G dim', 'G# M', 'G# m', 'G# aum', 'G# dim', ...
     'A M', 'A m', 'A aum', 'A dim', 'Bb M', 'Bb m', 'Bb aum', 'Bb dim', ...
     'B M', 'B m', 'B aum', 'B dim' };

    % get total seconds of time to mensure the length of music 
    signal = signal(:,1);
    time_seconds_total = fix((length(signal)/fs)); 
    % allocate matrix time per notes
    notes_time(time_seconds_total, 60) = 0;
    % allocate cell to put the chords throughout music 
    chords_time = {};

    for time = 1:time_seconds_total
        % building a window to short fft
        signal_time = build_window_short_fft(signal, time, fs);
        
        % get frequency spectrum
        respfreq = get_frequency_spectrum(signal_time, fs);

        % get energy of notes
        notes_time = get_energy_notes(respfreq, notes_time, time);
    end

    % get chord in pitch
    [chord_pitch, chord_pitch_number] = get_chord_pitch(notes_time, time_seconds_total, dictionary_chords);

    % with tone of music we can build harmonic tree
    for time = 1:time_seconds_total
        % get energy of chords
        energy_chords = get_energy_chords(notes_time, time);
        chord_number = find(energy_chords==max(energy_chords));

        % check harmonic field
        if check_harmonic_field(chord_number, chord_pitch_number) == 0
            % get chord in harmonic field
            chord_number = get_chord_energy_harmonic_field(chord_pitch_number, notes_time, time);
        end

        % consulte dictionary chords to put a string relative a chord max energy
        chords_time{time} = dictionary_chords{chord_number};
    end
end

function [notes_time, chords_time, chord_pitch] = DA3_window_10000(signal, sampling, chord_pitch_number)
    % grant to be a array in one dimension
signal = [signal(:,1)];

dictionary_chords = { 'C M', 'C m', 'C aum', 'C dim', ...
     'C# M', 'C# m', 'C# aum', 'C# dim', 'D M', 'D m', 'D aum', 'D dim', ...
     'Eb M', 'Eb m', 'Eb aum', 'Eb dim', 'E M', 'E m', 'E aum', 'E dim', ...
     'F M', 'F m', 'F aum', 'F dim', 'F# M', 'F# m', 'F# aum', 'F# dim', ...
     'G M', 'G m', 'G aum', 'G dim', 'G# M', 'G# m', 'G# aum', 'G# dim', ...
     'A M', 'A m', 'A aum', 'A dim', 'Bb M', 'Bb m', 'Bb aum', 'Bb dim', ...
     'B M', 'B m', 'B aum', 'B dim' };

% get total seconds of time to mensure the length of music
window_time = 10000; 
time_seconds_total = fix((length(signal)/window_time)); 
% allocate matrix time per notes
notes_time(time_seconds_total, 48) = 0;
% allocate cell to put the chords throughout music 
chords_time = {};

for time = 1:time_seconds_total
    % building a window to short fft
    signal_time = build_window_short_fft_10000(signal, time, sampling, window_time);
    
    % get frequency spectrum
    frequency_spectrum = get_frequency_spectrum_10000(signal_time, sampling);

    % get energy of notes
    notes_time = get_energy_notes_10000(frequency_spectrum, notes_time, time);
end

% with tone of music we can build harmonic tree
for time = 1:time_seconds_total
    % get energy of chords
    energy_chords = get_energy_chords_10000(notes_time, time);
    chord_number = find(energy_chords==max(energy_chords));

    % check harmonic field
    if check_harmonic_field(chord_number, chord_pitch_number) == 0
        % get chord in harmonic field
        chord_number = get_chord_energy_harmonic_field_10000(chord_pitch_number, notes_time, time);
    end

    % consulte dictionary chords to put a string relative a chord max energy
    chords_time{time} = dictionary_chords{chord_number};
end
end