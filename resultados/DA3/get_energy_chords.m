function energy_chords = get_energy_chords(notes_time, time)
	load_chords_tone;
	% discover tone music
	notes_energy_tone(12) = 0;
	for note = 1:12
		notes_energy_tone(note) = notes_time(time, note) + notes_time(time, note + 12) ...
			+ notes_time(time, note + 2*12) + notes_time(time, note + 3*12) ...
				+ notes_time(time, note + 4*12);
	end

	energy_chords(1:48) = 0;
    for chord = 1:48
        energy_chords(chord) = sum(notes_energy_tone.*chords_tone_mask(:, chord)');
    end