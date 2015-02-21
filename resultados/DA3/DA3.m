function [notes_time, chords_time, chord_pitch] = DA3(signal, fs)

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
    
    % get energy of chords
    energy_chords = get_energy_chords(notes_time, time);

    % consulte dictionary chords to put a string relative a chord max energy
    chords_time{time} = dictionary_chords{find(energy_chords==max(energy_chords))};
end

% get chord in pitch
chord_pitch = get_chord_pitch(notes_time, time_seconds_total, dictionary_chords);

