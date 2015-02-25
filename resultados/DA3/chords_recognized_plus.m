% chords recognized plus
dictionary_chords = { 'C M', 'C m', 'C aum', 'C dim', ...
     'C# M', 'C# m', 'C# aum', 'C# dim', 'D M', 'D m', 'D aum', 'D dim', ...
     'Eb M', 'Eb m', 'Eb aum', 'Eb dim', 'E M', 'E m', 'E aum', 'E dim', ...
     'F M', 'F m', 'F aum', 'F dim', 'F# M', 'F# m', 'F# aum', 'F# dim', ...
     'G M', 'G m', 'G aum', 'G dim', 'G# M', 'G# m', 'G# aum', 'G# dim', ...
     'A M', 'A m', 'A aum', 'A dim', 'Bb M', 'Bb m', 'Bb aum', 'Bb dim', ...
     'B M', 'B m', 'B aum', 'B dim' };

chords = {}
for chord = 1:48
	file_name = horzcat('chords/tone',num2str(chord),'.wav');
	chords{chord} = wavread(file_name);
end

file = open('eduardo_monica.wav');
signal = file.data(:,1);
fs = file.fs;
time_seconds_total = fix((length(signal)/file.fs)); 

chords_time = {};
for time = 1:time_seconds_total
    signal_time = signal(1+((time-1)*fs):time*fs);
    window = blackman(length(signal_time));
    signal_time = window.*signal_time;

    % get energy of chords
    energy_chords(48) = 0;
    for chord = 1:48
    	chord_match = chords{chord};
    	module_fft_1 = abs(fft(chord_match(1:length(signal_time))));
    	module_fft_2 = abs(fft(signal_time));
    	correlacao = corrcoef(module_fft_1, module_fft_2);
    	energy_chords(chord) = correlacao(1,2);
    end

    disp(time);
    disp(time_seconds_total);
    % consulte dictionary chords to put a string relative a chord max energy
    chords_time{time} = dictionary_chords{find(energy_chords==max(energy_chords))};
    disp(chords_time{time});
end

chords_time