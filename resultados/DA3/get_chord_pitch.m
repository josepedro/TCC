function chord_pitch = get_chord_pitch(notes_time, time_seconds_total, chords, dictionary_chords);
	notes_energy_total = notes_time(1,:);
	for time = 2:time_seconds_total
	    notes_energy_total = notes_energy_total + notes_time(time,:);
	end

	energy_chords(1:48) = 0;
	for chord = 1:48
	    energy_chords(chord) = sum(notes_energy_total.*chords(chord,:));
	end

	chord_pitch = dictionary_chords{find(energy_chords==max(energy_chords))};