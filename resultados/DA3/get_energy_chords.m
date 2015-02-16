function energy_chords = get_energy_chords(notes_time, chords, time)
	energy_chords(1:48) = 0;
    for chord = 1:48
        energy_chords(chord) = sum(notes_time(time, :).*chords(chord,:));
    end