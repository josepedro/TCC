name_file_test = "generated_code.m"
string_code = ""
note_base = 12
chord_numerator = 0
name_chords = ["C","C#","D","D#","E","F","F#","G","G#","A","A#","B"]

for note_base in 1 .. 12
	string_code = string_code + "\n%-----------------------------------------\n"

	# mount major chords
	chord_numerator += 1
	puts name_chords[note_base-1]
	string_chord_major = "\n%"+name_chords[note_base-1].to_s+"M\n"
	for octave in 1 .. 5
		for note in 1 .. 3
			if note == 1
				note_put = note_base + (octave - 1)*12
				string_chord_major = string_chord_major + "chords("+chord_numerator.to_s+","+note_put.to_s+")=1;\n"
			end
			if note == 2
				note_put = note_base + (octave - 1)*12 + 4
				string_chord_major = string_chord_major + "chords("+chord_numerator.to_s+","+note_put.to_s+")=1;\n"
			end
			if note == 3
				note_put = note_base + (octave - 1)*12 + 7
				string_chord_major = string_chord_major + "chords("+chord_numerator.to_s+","+note_put.to_s+")=1;\n"	
			end	
		end
	end

	#puts string_chord_major
	string_code = string_code + string_chord_major + "\n"

	# mount minor chords
	chord_numerator += 1
	puts name_chords[note_base-1]
	string_chord_minor = "\n%"+name_chords[note_base-1].to_s+"m\n"
	for octave in 1 .. 5
		for note in 1 .. 3
			if note == 1
				note_put = note_base + (octave - 1)*12
				string_chord_minor = string_chord_minor + "chords("+chord_numerator.to_s+","+note_put.to_s+")=1;\n"
			end
			if note == 2
				note_put = note_base + (octave - 1)*12 + 3
				string_chord_minor = string_chord_minor + "chords("+chord_numerator.to_s+","+note_put.to_s+")=1;\n"
			end
			if note == 3
				note_put = note_base + (octave - 1)*12 + 7
				string_chord_minor = string_chord_minor + "chords("+chord_numerator.to_s+","+note_put.to_s+")=1;\n"	
			end	
		end
	end

	#puts string_chord_minor
	string_code = string_code + string_chord_minor + "\n"

	# mount aum chords
	chord_numerator += 1
	puts name_chords[note_base-1]
	string_chord_aum = "\n%"+name_chords[note_base-1].to_s+"aum\n"
	for octave in 1 .. 5
		for note in 1 .. 3
			if note == 1
				note_put = note_base + (octave - 1)*12
				string_chord_aum = string_chord_aum + "chords("+chord_numerator.to_s+","+note_put.to_s+")=1;\n"
			end
			if note == 2
				note_put = note_base + (octave - 1)*12 + 4
				string_chord_aum = string_chord_aum + "chords("+chord_numerator.to_s+","+note_put.to_s+")=1;\n"
			end
			if note == 3
				note_put = note_base + (octave - 1)*12 + 8
				string_chord_aum = string_chord_aum + "chords("+chord_numerator.to_s+","+note_put.to_s+")=1;\n"	
			end	
		end
	end

	#puts string_chord_aum
	string_code = string_code + string_chord_aum + "\n"

	# mount dim chords
	chord_numerator += 1
	puts name_chords[note_base-1]
	string_chord_dim = "\n%"+name_chords[note_base-1].to_s+"dim\n"
	for octave in 1 .. 5
		for note in 1 .. 3
			if note == 1
				note_put = note_base + (octave - 1)*12
				string_chord_dim = string_chord_dim + "chords("+chord_numerator.to_s+","+note_put.to_s+")=1;\n"
			end
			if note == 2
				note_put = note_base + (octave - 1)*12 + 3
				string_chord_dim = string_chord_dim + "chords("+chord_numerator.to_s+","+note_put.to_s+")=1;\n"
			end
			if note == 3
				note_put = note_base + (octave - 1)*12 + 6
				string_chord_dim = string_chord_dim + "chords("+chord_numerator.to_s+","+note_put.to_s+")=1;\n"	
			end	
		end
	end

	#puts string_chord_dim
	string_code = string_code + string_chord_dim + "\n"
end

file_test = File.open(name_file_test, "w")
file_test.print string_code