function notes_time = get_energy_notes_10000(respfreq, notes_time, time)
	
	load_notes_10k;
	respfreq = respfreq(1:length(notes(1,:)));
	for note = 1:48
        notes_time(time, note) = sum(respfreq.*notes(note,:));    
	end