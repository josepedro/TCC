string_array_chords = "dictionary_chords = { "
array_notes = ["C", "C#", "D", "Eb", "E", "F", "F#", "G", "G#", "A", "Bb", "B"]
array_chord_type = ["/","m/","aum/","dim/"]
array_chord_type_1 = ["","m","aum","dim"]

for note in 0 .. 11
	for chord_type in 0 .. 3
		for bass_type in 0 .. 11
			if bass_type == (note + 4)%12
				string_array_chords = string_array_chords + 
				"'" + array_notes[note].to_s +
				array_chord_type[chord_type] +
				array_notes[bass_type].to_s + "\'" + ", "
			elsif bass_type == (note + 7)%12
				string_array_chords = string_array_chords + 
				"'" + array_notes[note].to_s +
				array_chord_type[chord_type] +
				 array_notes[bass_type].to_s + "\'" + ", "
			else
				string_array_chords = string_array_chords + "'" +array_notes[note].to_s + 
				array_chord_type_1[chord_type] + 
				"\'"+", "
			end
		end
		string_array_chords = string_array_chords + " ... \n"
	end
end

string_array_chords = string_array_chords + "}"

puts string_array_chords