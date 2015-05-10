%Script to tests

fs = 44100;

string_cat = '';

%Testing combinations of CM
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/CM1.wav'), fs);
disp('../../acordes_teste/CM1.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/CM2.wav'), fs);
disp('../../acordes_teste/CM2.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/CM3.wav'), fs);
disp('../../acordes_teste/CM3.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
%Testing combinations of Cm
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Cm1.wav'), fs);
disp('../../acordes_teste/Cm1.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Cm2.wav'), fs);
disp('../../acordes_teste/Cm2.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Cm3.wav'), fs);
disp('../../acordes_teste/Cm3.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
%Testing combinations of Caum
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Caum1.wav'), fs);
disp('../../acordes_teste/Caum1.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Caum2.wav'), fs);
disp('../../acordes_teste/Caum2.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Caum3.wav'), fs);
disp('../../acordes_teste/Caum3.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
%Testing combinations of Cdim
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Cdim1.wav'), fs);
disp('../../acordes_teste/Cdim1.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Cdim2.wav'), fs);
disp('../../acordes_teste/Cdim2.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Cdim3.wav'), fs);
disp('../../acordes_teste/Cdim3.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');

%Testing combinations of C#M
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/C#M1.wav'), fs);
disp('../../acordes_teste/C#M1.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/C#M2.wav'), fs);
disp('../../acordes_teste/C#M2.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/C#M3.wav'), fs);
disp('../../acordes_teste/C#M3.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
%Testing combinations of C#m
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/C#m1.wav'), fs);
disp('../../acordes_teste/C#m1.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/C#m2.wav'), fs);
disp('../../acordes_teste/C#m2.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/C#m3.wav'), fs);
disp('../../acordes_teste/C#m3.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
%Testing combinations of C#aum
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/C#aum1.wav'), fs);
disp('../../acordes_teste/C#aum1.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/C#aum2.wav'), fs);
disp('../../acordes_teste/C#aum2.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/C#aum3.wav'), fs);
disp('../../acordes_teste/C#aum3.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
%Testing combinations of C#dim
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/C#dim1.wav'), fs);
disp('../../acordes_teste/C#dim1.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/C#dim2.wav'), fs);
disp('../../acordes_teste/C#dim2.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/C#dim3.wav'), fs);
disp('../../acordes_teste/C#dim3.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');

%Testing combinations of DM
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/DM1.wav'), fs);
disp('../../acordes_teste/DM1.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/DM2.wav'), fs);
disp('../../acordes_teste/DM2.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/DM3.wav'), fs);
disp('../../acordes_teste/DM3.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
%Testing combinations of Dm
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Dm1.wav'), fs);
disp('../../acordes_teste/Dm1.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Dm2.wav'), fs);
disp('../../acordes_teste/Dm2.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Dm3.wav'), fs);
disp('../../acordes_teste/Dm3.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
%Testing combinations of Daum
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Daum1.wav'), fs);
disp('../../acordes_teste/Daum1.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Daum2.wav'), fs);
disp('../../acordes_teste/Daum2.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Daum3.wav'), fs);
disp('../../acordes_teste/Daum3.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
%Testing combinations of Ddim
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Ddim1.wav'), fs);
disp('../../acordes_teste/Ddim1.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Ddim2.wav'), fs);
disp('../../acordes_teste/Ddim2.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Ddim3.wav'), fs);
disp('../../acordes_teste/Ddim3.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');

%Testing combinations of D#M
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/D#M1.wav'), fs);
disp('../../acordes_teste/D#M1.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/D#M2.wav'), fs);
disp('../../acordes_teste/D#M2.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/D#M3.wav'), fs);
disp('../../acordes_teste/D#M3.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
%Testing combinations of D#m
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/D#m1.wav'), fs);
disp('../../acordes_teste/D#m1.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/D#m2.wav'), fs);
disp('../../acordes_teste/D#m2.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/D#m3.wav'), fs);
disp('../../acordes_teste/D#m3.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
%Testing combinations of D#aum
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/D#aum1.wav'), fs);
disp('../../acordes_teste/D#aum1.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/D#aum2.wav'), fs);
disp('../../acordes_teste/D#aum2.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/D#aum3.wav'), fs);
disp('../../acordes_teste/D#aum3.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
%Testing combinations of D#dim
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/D#dim1.wav'), fs);
disp('../../acordes_teste/D#dim1.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/D#dim2.wav'), fs);
disp('../../acordes_teste/D#dim2.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/D#dim3.wav'), fs);
disp('../../acordes_teste/D#dim3.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');

%Testing combinations of EM
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/EM1.wav'), fs);
disp('../../acordes_teste/EM1.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/EM2.wav'), fs);
disp('../../acordes_teste/EM2.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/EM3.wav'), fs);
disp('../../acordes_teste/EM3.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
%Testing combinations of Em
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Em1.wav'), fs);
disp('../../acordes_teste/Em1.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Em2.wav'), fs);
disp('../../acordes_teste/Em2.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Em3.wav'), fs);
disp('../../acordes_teste/Em3.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
%Testing combinations of Eaum
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Eaum1.wav'), fs);
disp('../../acordes_teste/Eaum1.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Eaum2.wav'), fs);
disp('../../acordes_teste/Eaum2.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Eaum3.wav'), fs);
disp('../../acordes_teste/Eaum3.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
%Testing combinations of Edim
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Edim1.wav'), fs);
disp('../../acordes_teste/Edim1.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Edim2.wav'), fs);
disp('../../acordes_teste/Edim2.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Edim3.wav'), fs);
disp('../../acordes_teste/Edim3.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');

%Testing combinations of FM
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/FM1.wav'), fs);
disp('../../acordes_teste/FM1.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/FM2.wav'), fs);
disp('../../acordes_teste/FM2.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/FM3.wav'), fs);
disp('../../acordes_teste/FM3.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
%Testing combinations of Fm
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Fm1.wav'), fs);
disp('../../acordes_teste/Fm1.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Fm2.wav'), fs);
disp('../../acordes_teste/Fm2.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Fm3.wav'), fs);
disp('../../acordes_teste/Fm3.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
%Testing combinations of Faum
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Faum1.wav'), fs);
disp('../../acordes_teste/Faum1.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Faum2.wav'), fs);
disp('../../acordes_teste/Faum2.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Faum3.wav'), fs);
disp('../../acordes_teste/Faum3.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
%Testing combinations of Fdim
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Fdim1.wav'), fs);
disp('../../acordes_teste/Fdim1.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Fdim2.wav'), fs);
disp('../../acordes_teste/Fdim2.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Fdim3.wav'), fs);
disp('../../acordes_teste/Fdim3.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');

%Testing combinations of F#M
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/F#M1.wav'), fs);
disp('../../acordes_teste/F#M1.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/F#M2.wav'), fs);
disp('../../acordes_teste/F#M2.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/F#M3.wav'), fs);
disp('../../acordes_teste/F#M3.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
%Testing combinations of F#m
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/F#m1.wav'), fs);
disp('../../acordes_teste/F#m1.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/F#m2.wav'), fs);
disp('../../acordes_teste/F#m2.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/F#m3.wav'), fs);
disp('../../acordes_teste/F#m3.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
%Testing combinations of F#aum
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/F#aum1.wav'), fs);
disp('../../acordes_teste/F#aum1.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/F#aum2.wav'), fs);
disp('../../acordes_teste/F#aum2.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/F#aum3.wav'), fs);
disp('../../acordes_teste/F#aum3.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
%Testing combinations of F#dim
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/F#dim1.wav'), fs);
disp('../../acordes_teste/F#dim1.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/F#dim2.wav'), fs);
disp('../../acordes_teste/F#dim2.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/F#dim3.wav'), fs);
disp('../../acordes_teste/F#dim3.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');

%Testing combinations of GM
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/GM1.wav'), fs);
disp('../../acordes_teste/GM1.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/GM2.wav'), fs);
disp('../../acordes_teste/GM2.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/GM3.wav'), fs);
disp('../../acordes_teste/GM3.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
%Testing combinations of Gm
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Gm1.wav'), fs);
disp('../../acordes_teste/Gm1.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Gm2.wav'), fs);
disp('../../acordes_teste/Gm2.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Gm3.wav'), fs);
disp('../../acordes_teste/Gm3.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
%Testing combinations of Gaum
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Gaum1.wav'), fs);
disp('../../acordes_teste/Gaum1.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Gaum2.wav'), fs);
disp('../../acordes_teste/Gaum2.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Gaum3.wav'), fs);
disp('../../acordes_teste/Gaum3.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
%Testing combinations of Gdim
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Gdim1.wav'), fs);
disp('../../acordes_teste/Gdim1.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Gdim2.wav'), fs);
disp('../../acordes_teste/Gdim2.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Gdim3.wav'), fs);
disp('../../acordes_teste/Gdim3.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');

%Testing combinations of G#M
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/G#M1.wav'), fs);
disp('../../acordes_teste/G#M1.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/G#M2.wav'), fs);
disp('../../acordes_teste/G#M2.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/G#M3.wav'), fs);
disp('../../acordes_teste/G#M3.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
%Testing combinations of G#m
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/G#m1.wav'), fs);
disp('../../acordes_teste/G#m1.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/G#m2.wav'), fs);
disp('../../acordes_teste/G#m2.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/G#m3.wav'), fs);
disp('../../acordes_teste/G#m3.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
%Testing combinations of G#aum
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/G#aum1.wav'), fs);
disp('../../acordes_teste/G#aum1.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/G#aum2.wav'), fs);
disp('../../acordes_teste/G#aum2.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/G#aum3.wav'), fs);
disp('../../acordes_teste/G#aum3.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
%Testing combinations of G#dim
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/G#dim1.wav'), fs);
disp('../../acordes_teste/G#dim1.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/G#dim2.wav'), fs);
disp('../../acordes_teste/G#dim2.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/G#dim3.wav'), fs);
disp('../../acordes_teste/G#dim3.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');

%Testing combinations of AM
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/AM1.wav'), fs);
disp('../../acordes_teste/AM1.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/AM2.wav'), fs);
disp('../../acordes_teste/AM2.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/AM3.wav'), fs);
disp('../../acordes_teste/AM3.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
%Testing combinations of Am
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Am1.wav'), fs);
disp('../../acordes_teste/Am1.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Am2.wav'), fs);
disp('../../acordes_teste/Am2.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Am3.wav'), fs);
disp('../../acordes_teste/Am3.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
%Testing combinations of Aaum
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Aaum1.wav'), fs);
disp('../../acordes_teste/Aaum1.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Aaum2.wav'), fs);
disp('../../acordes_teste/Aaum2.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Aaum3.wav'), fs);
disp('../../acordes_teste/Aaum3.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
%Testing combinations of Adim
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Adim1.wav'), fs);
disp('../../acordes_teste/Adim1.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Adim2.wav'), fs);
disp('../../acordes_teste/Adim2.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Adim3.wav'), fs);
disp('../../acordes_teste/Adim3.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');

%Testing combinations of A#M
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/A#M1.wav'), fs);
disp('../../acordes_teste/A#M1.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/A#M2.wav'), fs);
disp('../../acordes_teste/A#M2.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/A#M3.wav'), fs);
disp('../../acordes_teste/A#M3.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
%Testing combinations of A#m
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/A#m1.wav'), fs);
disp('../../acordes_teste/A#m1.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/A#m2.wav'), fs);
disp('../../acordes_teste/A#m2.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/A#m3.wav'), fs);
disp('../../acordes_teste/A#m3.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
%Testing combinations of A#aum
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/A#aum1.wav'), fs);
disp('../../acordes_teste/A#aum1.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/A#aum2.wav'), fs);
disp('../../acordes_teste/A#aum2.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/A#aum3.wav'), fs);
disp('../../acordes_teste/A#aum3.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
%Testing combinations of A#dim
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/A#dim1.wav'), fs);
disp('../../acordes_teste/A#dim1.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/A#dim2.wav'), fs);
disp('../../acordes_teste/A#dim2.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/A#dim3.wav'), fs);
disp('../../acordes_teste/A#dim3.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');

%Testing combinations of BM
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/BM1.wav'), fs);
disp('../../acordes_teste/BM1.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/BM2.wav'), fs);
disp('../../acordes_teste/BM2.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/BM3.wav'), fs);
disp('../../acordes_teste/BM3.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
%Testing combinations of Bm
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Bm1.wav'), fs);
disp('../../acordes_teste/Bm1.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Bm2.wav'), fs);
disp('../../acordes_teste/Bm2.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Bm3.wav'), fs);
disp('../../acordes_teste/Bm3.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
%Testing combinations of Baum
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Baum1.wav'), fs);
disp('../../acordes_teste/Baum1.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Baum2.wav'), fs);
disp('../../acordes_teste/Baum2.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Baum3.wav'), fs);
disp('../../acordes_teste/Baum3.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
%Testing combinations of Bdim
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Bdim1.wav'), fs);
disp('../../acordes_teste/Bdim1.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Bdim2.wav'), fs);
disp('../../acordes_teste/Bdim2.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');
[notes_time, chords_time, chord_pitch] = DA3(wavread('../../acordes_teste/Bdim3.wav'), fs);
disp('../../acordes_teste/Bdim3.wav');
disp(chords_time);
for chord = 1:length(chords_time)
	string_cat = horzcat(string_cat, chords_time{chord}, ' ');
end
string_cat = horzcat(string_cat, '- ');

test_file = fopen('test_file.txt', 'w');
fprintf(test_file, '%s', string_cat);
fclose(test_file);