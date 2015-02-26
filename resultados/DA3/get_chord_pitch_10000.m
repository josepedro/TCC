function [chord_pitch, chord_pitch_number] = get_chord_pitch_10000(notes_time, time_seconds_total, chords)
	
	dictionary_chords = { 'C M', 'C m', 'C aum', 'C dim', ...
     'C# M', 'C# m', 'C# aum', 'C# dim', 'D M', 'D m', 'D aum', 'D dim', ...
     'Eb M', 'Eb m', 'Eb aum', 'Eb dim', 'E M', 'E m', 'E aum', 'E dim', ...
     'F M', 'F m', 'F aum', 'F dim', 'F# M', 'F# m', 'F# aum', 'F# dim', ...
     'G M', 'G m', 'G aum', 'G dim', 'G# M', 'G# m', 'G# aum', 'G# dim', ...
     'A M', 'A m', 'A aum', 'A dim', 'Bb M', 'Bb m', 'Bb aum', 'Bb dim', ...
     'B M', 'B m', 'B aum', 'B dim' };

	notes_energy_total(48) = 0;
	for note = 1:48
		notes_energy_total(note) = sum([notes_time(:,note)]);
	end

	% discover tone music
	notes_energy_tone(12) = 0;
	for note = 1:12
		notes_energy_tone(note) = notes_energy_total(note) + notes_energy_total(note + 12) ...
			+ notes_energy_total(note + 2*12) + notes_energy_total(note + 3*12);
	end

	% find chord tone
	load_chords_tone;
	chords_tone(48) = 0;
	for chord = 1:48
		chords_tone(chord) = sum(notes_energy_tone.*chords_tone_mask(:, chord)');
	end

	chord_pitch_number = find(chords_tone==max(chords_tone));
	chord_pitch = dictionary_chords{chord_pitch_number};