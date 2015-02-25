function is_be_harmonic_field = check_harmonic_field(chord_number, chord_pitch_number)
	% array with major chords
	major_chords_number = [1 5 9 13 17 21 25 29 33 37 41 45];

	% verify major
	if ismember(chord_pitch_number, major_chords_number) == 1
		% set harmonic field 
		I = chord_pitch_number;
		II = mod(((chord_pitch_number - 1) + 2*4 + 1), 48) + 1;
		III = mod(((chord_pitch_number - 1) + 4*4 + 1), 48) + 1;
		IV = mod(((chord_pitch_number - 1) + 5*4 + 0), 48) + 1;
		V = mod(((chord_pitch_number - 1) + 7*4 + 0), 48) + 1;
		VI = mod(((chord_pitch_number - 1) + 9*4 + 1), 48) + 1;
		VII = mod(((chord_pitch_number - 1) + 11*4 + 3), 48) + 1;
		harmonic_field = [I II III IV V VI VII];
		
		if ismember(chord_number, harmonic_field) == 1
			is_be_harmonic_field = 1;
		else
			is_be_harmonic_field = 0;
		end
	end

	% array with minor chords
	minor_chords_number = [2 6 10 14 18 22 26 30 34 38 42 46];

	% verify minor
	if ismember(chord_pitch_number, minor_chords_number) == 1
		% set harmonic field 
		I = chord_pitch_number;
		II = mod(((chord_pitch_number - 1) + 2*4 + 2), 48) + 1;
		III = mod(((chord_pitch_number - 1) + 3*4 - 1), 48) + 1;
		IV = mod(((chord_pitch_number - 1) + 5*4 + 0), 48) + 1;
		V = mod(((chord_pitch_number - 1) + 7*4 + 0), 48) + 1;
		VI = mod(((chord_pitch_number - 1) + 8*4 - 1), 48) + 1;
		VII = mod(((chord_pitch_number - 1) + 10*4 - 1), 48) + 1;
		harmonic_field = [I II III IV V VI VII];
		
		if ismember(chord_number, harmonic_field) == 1
			is_be_harmonic_field = 1;
		else
			is_be_harmonic_field = 0;
		end
	end	