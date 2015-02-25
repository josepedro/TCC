function chord_number = get_chord_energy_harmonic_field(chord_pitch_number, notes_time, time)
	load_chords_tone;

	% analysing according with major chord tone
	major_chords_number = [1 5 9 13 17 21 25 29 33 37 41 45];
	if ismember(chord_pitch_number, major_chords_number) == 1
		% set chords number according with harmonic field
		IIm = mod(((chord_pitch_number - 1) + 2*4 + 1), 48) + 1;
		IIIm = mod(((chord_pitch_number - 1) + 4*4 + 1), 48) + 1;
		IV = mod(((chord_pitch_number - 1) + 5*4 + 0), 48) + 1;
		V = mod(((chord_pitch_number - 1) + 7*4 + 0), 48) + 1;
		VIm = mod(((chord_pitch_number - 1) + 9*4 + 1), 48) + 1;
		VIIdim = mod(((chord_pitch_number - 1) + 11*4 + 3), 48) + 1;

		% customize weights
		I_weight = 2;
		IIm_weight = 2;
		IIIm_weight = 2;
		IV_weight = 2;
		V_weight = 2;
		VIm_weight = 2;
		VIIdim_weight = 2;

		% set weights in chords data base
		chords_tone_mask(:, chord_pitch_number) = chords_tone_mask(:, chord_pitch_number)*I_weight; 
		chords_tone_mask(:, IIm) = chords_tone_mask(:, IIm)*IIm_weight;
		chords_tone_mask(:, IIIm) = chords_tone_mask(:, IIIm)*IIIm_weight;
		chords_tone_mask(:, IV) = chords_tone_mask(:, IV)*IV_weight;
		chords_tone_mask(:, V) = chords_tone_mask(:, V)*V_weight;
		chords_tone_mask(:, VIm) = chords_tone_mask(:, VIm)*VIm_weight;
		chords_tone_mask(:, VIIdim) = chords_tone_mask(:, VIIdim)*VIIdim_weight;
	end

	% analysing according with minor chord tone
	minor_chords_number = [2 6 10 14 18 22 26 30 34 38 42 46];
	if ismember(chord_pitch_number, minor_chords_number) == 1
		% set chords number according with harmonic field
		IIdim = mod(((chord_pitch_number - 1) + 2*4 + 2), 48) + 1;
		III = mod(((chord_pitch_number - 1) + 3*4 - 1), 48) + 1;
		IVm = mod(((chord_pitch_number - 1) + 5*4 + 0), 48) + 1;
		Vm = mod(((chord_pitch_number - 1) + 7*4 + 0), 48) + 1;
		VI = mod(((chord_pitch_number - 1) + 8*4 - 1), 48) + 1;
		VII = mod(((chord_pitch_number - 1) + 10*4 - 1), 48) + 1;

		% customize weights
		Im_weight = 2;
		IIdim_weight = 2;
		III_weight = 2;
		IVm_weight = 2;
		Vm_weight = 2;
		VI_weight = 2;
		VII_weight = 2;

		% set weights in chords data base
		chords_tone_mask(:, chord_pitch_number) = chords_tone_mask(:, chord_pitch_number)*Im_weight;
		chords_tone_mask(:, IIdim) = chords_tone_mask(:, IIdim)*IIdim_weight;
		chords_tone_mask(:, III) = chords_tone_mask(:, III)*III_weight;
		chords_tone_mask(:, IVm) = chords_tone_mask(:, IVm)*IVm_weight;
		chords_tone_mask(:, Vm) = chords_tone_mask(:, Vm)*Vm_weight;
		chords_tone_mask(:, VI) = chords_tone_mask(:, VI)*VI_weight;
		chords_tone_mask(:, VII) = chords_tone_mask(:, VII)*VII_weight;
	end

	notes_energy_tone(12) = 0;
	for note = 1:12
		notes_energy_tone(note) = notes_time(time, note) + notes_time(time, note + 12) ...
			+ notes_time(time, note + 2*12) + notes_time(time, note + 3*12) ...
				+ notes_time(time, note + 4*12);
	end

	energy_chords(1:48) = 0;
    for chord = 1:48
        energy_chords(chord) = sum((notes_energy_tone.*chords_tone_mask(:, chord)').^2);
    end

    chord_number = find(energy_chords==max(energy_chords));