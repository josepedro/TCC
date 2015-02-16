function notes_time = get_energy_notes(respfreq, notes, notes_time, time)
	for note = 1:60
        notes_time(time, note) = sum(respfreq.*notes(note,:));    
	end