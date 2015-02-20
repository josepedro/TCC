function notes_time = get_energy_notes(respfreq, notes_time, time)
	
	load_notes;
	respfreq = [respfreq zeros(1, length(notes(1,:)) - length(respfreq))];
	for note = 1:60
        notes_time(time, note) = sum((respfreq.*notes(note,:)).^2);    
	end