exec dc.sci;

//Script to tests

//Open the file to write results
file_results = mopen('chords_results.txt','w');

chord = 0;

//Testing combinations of CM
chord_result_1 = DA2(wavread('acordes_teste/CM1.wav'));
chord = chord + 1;
disp(chord)
chord_result_2 = DA2(wavread('acordes_teste/CM2.wav'));
chord = chord + 1;
disp(chord)
chord_result_3 = DA2(wavread('acordes_teste/CM3.wav'));
chord = chord + 1;
disp(chord)
mputl(chord_result_1+';'+chord_result_2+';'+chord_result_3,file_results);
//Testing combinations of Cm
chord_result_1 = DA2(wavread('acordes_teste/Cm1.wav'));
chord = chord + 1;
disp(chord)
chord_result_2 = DA2(wavread('acordes_teste/Cm2.wav'));
chord = chord + 1;
disp(chord)
chord_result_3 = DA2(wavread('acordes_teste/Cm3.wav'));
chord = chord + 1;
disp(chord)
mputl(chord_result_1+';'+chord_result_2+';'+chord_result_3,file_results);
//Testing combinations of Caum
chord_result_1 = DA2(wavread('acordes_teste/Caum1.wav'));
chord = chord + 1;
disp(chord)
chord_result_2 = DA2(wavread('acordes_teste/Caum2.wav'));
chord = chord + 1;
disp(chord)
chord_result_3 = DA2(wavread('acordes_teste/Caum3.wav'));
chord = chord + 1;
disp(chord)
mputl(chord_result_1+';'+chord_result_2+';'+chord_result_3,file_results);
//Testing combinations of Cdim
chord_result_1 = DA2(wavread('acordes_teste/Cdim1.wav'));
chord = chord + 1;
disp(chord)
chord_result_2 = DA2(wavread('acordes_teste/Cdim2.wav'));
chord = chord + 1;
disp(chord)
chord_result_3 = DA2(wavread('acordes_teste/Cdim3.wav'));
chord = chord + 1;
disp(chord)
mputl(chord_result_1+';'+chord_result_2+';'+chord_result_3,file_results);

//Testing combinations of C#M
chord_result_1 = DA2(wavread('acordes_teste/C#M1.wav'));
chord = chord + 1;
disp(chord)
chord_result_2 = DA2(wavread('acordes_teste/C#M2.wav'));
chord = chord + 1;
disp(chord)
chord_result_3 = DA2(wavread('acordes_teste/C#M3.wav'));
chord = chord + 1;
disp(chord)
mputl(chord_result_1+';'+chord_result_2+';'+chord_result_3,file_results);
//Testing combinations of C#m
chord_result_1 = DA2(wavread('acordes_teste/C#m1.wav'));
chord = chord + 1;
disp(chord)
chord_result_2 = DA2(wavread('acordes_teste/C#m2.wav'));
chord = chord + 1;
disp(chord)
chord_result_3 = DA2(wavread('acordes_teste/C#m3.wav'));
chord = chord + 1;
disp(chord)
mputl(chord_result_1+';'+chord_result_2+';'+chord_result_3,file_results);
//Testing combinations of C#aum
chord_result_1 = DA2(wavread('acordes_teste/C#aum1.wav'));
chord = chord + 1;
disp(chord)
chord_result_2 = DA2(wavread('acordes_teste/C#aum2.wav'));
chord = chord + 1;
disp(chord)
chord_result_3 = DA2(wavread('acordes_teste/C#aum3.wav'));
chord = chord + 1;
disp(chord)
mputl(chord_result_1+';'+chord_result_2+';'+chord_result_3,file_results);
//Testing combinations of C#dim
chord_result_1 = DA2(wavread('acordes_teste/C#dim1.wav'));
chord = chord + 1;
disp(chord)
chord_result_2 = DA2(wavread('acordes_teste/C#dim2.wav'));
chord = chord + 1;
disp(chord)
chord_result_3 = DA2(wavread('acordes_teste/C#dim3.wav'));
chord = chord + 1;
disp(chord)
mputl(chord_result_1+';'+chord_result_2+';'+chord_result_3,file_results);

//Testing combinations of DM
chord_result_1 = DA2(wavread('acordes_teste/DM1.wav'));
chord = chord + 1;
disp(chord)
chord_result_2 = DA2(wavread('acordes_teste/DM2.wav'));
chord = chord + 1;
disp(chord)
chord_result_3 = DA2(wavread('acordes_teste/DM3.wav'));
chord = chord + 1;
disp(chord)
mputl(chord_result_1+';'+chord_result_2+';'+chord_result_3,file_results);
//Testing combinations of Dm
chord_result_1 = DA2(wavread('acordes_teste/Dm1.wav'));
chord = chord + 1;
disp(chord)
chord_result_2 = DA2(wavread('acordes_teste/Dm2.wav'));
chord = chord + 1;
disp(chord)
chord_result_3 = DA2(wavread('acordes_teste/Dm3.wav'));
chord = chord + 1;
disp(chord)
mputl(chord_result_1+';'+chord_result_2+';'+chord_result_3,file_results);
//Testing combinations of Daum
chord_result_1 = DA2(wavread('acordes_teste/Daum1.wav'));
chord = chord + 1;
disp(chord)
chord_result_2 = DA2(wavread('acordes_teste/Daum2.wav'));
chord = chord + 1;
disp(chord)
chord_result_3 = DA2(wavread('acordes_teste/Daum3.wav'));
chord = chord + 1;
disp(chord)
mputl(chord_result_1+';'+chord_result_2+';'+chord_result_3,file_results);
//Testing combinations of Ddim
chord_result_1 = DA2(wavread('acordes_teste/Ddim1.wav'));
chord = chord + 1;
disp(chord)
chord_result_2 = DA2(wavread('acordes_teste/Ddim2.wav'));
chord = chord + 1;
disp(chord)
chord_result_3 = DA2(wavread('acordes_teste/Ddim3.wav'));
chord = chord + 1;
disp(chord)
mputl(chord_result_1+';'+chord_result_2+';'+chord_result_3,file_results);

//Testing combinations of D#M
chord_result_1 = DA2(wavread('acordes_teste/D#M1.wav'));
chord = chord + 1;
disp(chord)
chord_result_2 = DA2(wavread('acordes_teste/D#M2.wav'));
chord = chord + 1;
disp(chord)
chord_result_3 = DA2(wavread('acordes_teste/D#M3.wav'));
chord = chord + 1;
disp(chord)
mputl(chord_result_1+';'+chord_result_2+';'+chord_result_3,file_results);
//Testing combinations of D#m
chord_result_1 = DA2(wavread('acordes_teste/D#m1.wav'));
chord = chord + 1;
disp(chord)
chord_result_2 = DA2(wavread('acordes_teste/D#m2.wav'));
chord = chord + 1;
disp(chord)
chord_result_3 = DA2(wavread('acordes_teste/D#m3.wav'));
chord = chord + 1;
disp(chord)
mputl(chord_result_1+';'+chord_result_2+';'+chord_result_3,file_results);
//Testing combinations of D#aum
chord_result_1 = DA2(wavread('acordes_teste/D#aum1.wav'));
chord = chord + 1;
disp(chord)
chord_result_2 = DA2(wavread('acordes_teste/D#aum2.wav'));
chord = chord + 1;
disp(chord)
chord_result_3 = DA2(wavread('acordes_teste/D#aum3.wav'));
chord = chord + 1;
disp(chord)
mputl(chord_result_1+';'+chord_result_2+';'+chord_result_3,file_results);
//Testing combinations of D#dim
chord_result_1 = DA2(wavread('acordes_teste/D#dim1.wav'));
chord = chord + 1;
disp(chord)
chord_result_2 = DA2(wavread('acordes_teste/D#dim2.wav'));
chord = chord + 1;
disp(chord)
chord_result_3 = DA2(wavread('acordes_teste/D#dim3.wav'));
chord = chord + 1;
disp(chord)
mputl(chord_result_1+';'+chord_result_2+';'+chord_result_3,file_results);

//Testing combinations of EM
chord_result_1 = DA2(wavread('acordes_teste/EM1.wav'));
chord = chord + 1;
disp(chord)
chord_result_2 = DA2(wavread('acordes_teste/EM2.wav'));
chord = chord + 1;
disp(chord)
chord_result_3 = DA2(wavread('acordes_teste/EM3.wav'));
chord = chord + 1;
disp(chord)
mputl(chord_result_1+';'+chord_result_2+';'+chord_result_3,file_results);
//Testing combinations of Em
chord_result_1 = DA2(wavread('acordes_teste/Em1.wav'));
chord = chord + 1;
disp(chord)
chord_result_2 = DA2(wavread('acordes_teste/Em2.wav'));
chord = chord + 1;
disp(chord)
chord_result_3 = DA2(wavread('acordes_teste/Em3.wav'));
chord = chord + 1;
disp(chord)
mputl(chord_result_1+';'+chord_result_2+';'+chord_result_3,file_results);
//Testing combinations of Eaum
chord_result_1 = DA2(wavread('acordes_teste/Eaum1.wav'));
chord = chord + 1;
disp(chord)
chord_result_2 = DA2(wavread('acordes_teste/Eaum2.wav'));
chord = chord + 1;
disp(chord)
chord_result_3 = DA2(wavread('acordes_teste/Eaum3.wav'));
chord = chord + 1;
disp(chord)
mputl(chord_result_1+';'+chord_result_2+';'+chord_result_3,file_results);
//Testing combinations of Edim
chord_result_1 = DA2(wavread('acordes_teste/Edim1.wav'));
chord = chord + 1;
disp(chord)
chord_result_2 = DA2(wavread('acordes_teste/Edim2.wav'));
chord = chord + 1;
disp(chord)
chord_result_3 = DA2(wavread('acordes_teste/Edim3.wav'));
chord = chord + 1;
disp(chord)
mputl(chord_result_1+';'+chord_result_2+';'+chord_result_3,file_results);

//Testing combinations of FM
chord_result_1 = DA2(wavread('acordes_teste/FM1.wav'));
chord = chord + 1;
disp(chord)
chord_result_2 = DA2(wavread('acordes_teste/FM2.wav'));
chord = chord + 1;
disp(chord)
chord_result_3 = DA2(wavread('acordes_teste/FM3.wav'));
chord = chord + 1;
disp(chord)
mputl(chord_result_1+';'+chord_result_2+';'+chord_result_3,file_results);
//Testing combinations of Fm
chord_result_1 = DA2(wavread('acordes_teste/Fm1.wav'));
chord = chord + 1;
disp(chord)
chord_result_2 = DA2(wavread('acordes_teste/Fm2.wav'));
chord = chord + 1;
disp(chord)
chord_result_3 = DA2(wavread('acordes_teste/Fm3.wav'));
chord = chord + 1;
disp(chord)
mputl(chord_result_1+';'+chord_result_2+';'+chord_result_3,file_results);
//Testing combinations of Faum
chord_result_1 = DA2(wavread('acordes_teste/Faum1.wav'));
chord = chord + 1;
disp(chord)
chord_result_2 = DA2(wavread('acordes_teste/Faum2.wav'));
chord = chord + 1;
disp(chord)
chord_result_3 = DA2(wavread('acordes_teste/Faum3.wav'));
chord = chord + 1;
disp(chord)
mputl(chord_result_1+';'+chord_result_2+';'+chord_result_3,file_results);
//Testing combinations of Fdim
chord_result_1 = DA2(wavread('acordes_teste/Fdim1.wav'));
chord = chord + 1;
disp(chord)
chord_result_2 = DA2(wavread('acordes_teste/Fdim2.wav'));
chord = chord + 1;
disp(chord)
chord_result_3 = DA2(wavread('acordes_teste/Fdim3.wav'));
chord = chord + 1;
disp(chord)
mputl(chord_result_1+';'+chord_result_2+';'+chord_result_3,file_results);

//Testing combinations of F#M
chord_result_1 = DA2(wavread('acordes_teste/F#M1.wav'));
chord = chord + 1;
disp(chord)
chord_result_2 = DA2(wavread('acordes_teste/F#M2.wav'));
chord = chord + 1;
disp(chord)
chord_result_3 = DA2(wavread('acordes_teste/F#M3.wav'));
chord = chord + 1;
disp(chord)
mputl(chord_result_1+';'+chord_result_2+';'+chord_result_3,file_results);
//Testing combinations of F#m
chord_result_1 = DA2(wavread('acordes_teste/F#m1.wav'));
chord = chord + 1;
disp(chord)
chord_result_2 = DA2(wavread('acordes_teste/F#m2.wav'));
chord = chord + 1;
disp(chord)
chord_result_3 = DA2(wavread('acordes_teste/F#m3.wav'));
chord = chord + 1;
disp(chord)
mputl(chord_result_1+';'+chord_result_2+';'+chord_result_3,file_results);
//Testing combinations of F#aum
chord_result_1 = DA2(wavread('acordes_teste/F#aum1.wav'));
chord = chord + 1;
disp(chord)
chord_result_2 = DA2(wavread('acordes_teste/F#aum2.wav'));
chord = chord + 1;
disp(chord)
chord_result_3 = DA2(wavread('acordes_teste/F#aum3.wav'));
chord = chord + 1;
disp(chord)
mputl(chord_result_1+';'+chord_result_2+';'+chord_result_3,file_results);
//Testing combinations of F#dim
chord_result_1 = DA2(wavread('acordes_teste/F#dim1.wav'));
chord = chord + 1;
disp(chord)
chord_result_2 = DA2(wavread('acordes_teste/F#dim2.wav'));
chord = chord + 1;
disp(chord)
chord_result_3 = DA2(wavread('acordes_teste/F#dim3.wav'));
chord = chord + 1;
disp(chord)
mputl(chord_result_1+';'+chord_result_2+';'+chord_result_3,file_results);

//Testing combinations of GM
chord_result_1 = DA2(wavread('acordes_teste/GM1.wav'));
chord = chord + 1;
disp(chord)
chord_result_2 = DA2(wavread('acordes_teste/GM2.wav'));
chord = chord + 1;
disp(chord)
chord_result_3 = DA2(wavread('acordes_teste/GM3.wav'));
chord = chord + 1;
disp(chord)
mputl(chord_result_1+';'+chord_result_2+';'+chord_result_3,file_results);
//Testing combinations of Gm
chord_result_1 = DA2(wavread('acordes_teste/Gm1.wav'));
chord = chord + 1;
disp(chord)
chord_result_2 = DA2(wavread('acordes_teste/Gm2.wav'));
chord = chord + 1;
disp(chord)
chord_result_3 = DA2(wavread('acordes_teste/Gm3.wav'));
chord = chord + 1;
disp(chord)
mputl(chord_result_1+';'+chord_result_2+';'+chord_result_3,file_results);
//Testing combinations of Gaum
chord_result_1 = DA2(wavread('acordes_teste/Gaum1.wav'));
chord = chord + 1;
disp(chord)
chord_result_2 = DA2(wavread('acordes_teste/Gaum2.wav'));
chord = chord + 1;
disp(chord)
chord_result_3 = DA2(wavread('acordes_teste/Gaum3.wav'));
chord = chord + 1;
disp(chord)
mputl(chord_result_1+';'+chord_result_2+';'+chord_result_3,file_results);
//Testing combinations of Gdim
chord_result_1 = DA2(wavread('acordes_teste/Gdim1.wav'));
chord = chord + 1;
disp(chord)
chord_result_2 = DA2(wavread('acordes_teste/Gdim2.wav'));
chord = chord + 1;
disp(chord)
chord_result_3 = DA2(wavread('acordes_teste/Gdim3.wav'));
chord = chord + 1;
disp(chord)
mputl(chord_result_1+';'+chord_result_2+';'+chord_result_3,file_results);

//Testing combinations of G#M
chord_result_1 = DA2(wavread('acordes_teste/G#M1.wav'));
chord = chord + 1;
disp(chord)
chord_result_2 = DA2(wavread('acordes_teste/G#M2.wav'));
chord = chord + 1;
disp(chord)
chord_result_3 = DA2(wavread('acordes_teste/G#M3.wav'));
chord = chord + 1;
disp(chord)
mputl(chord_result_1+';'+chord_result_2+';'+chord_result_3,file_results);
//Testing combinations of G#m
chord_result_1 = DA2(wavread('acordes_teste/G#m1.wav'));
chord = chord + 1;
disp(chord)
chord_result_2 = DA2(wavread('acordes_teste/G#m2.wav'));
chord = chord + 1;
disp(chord)
chord_result_3 = DA2(wavread('acordes_teste/G#m3.wav'));
chord = chord + 1;
disp(chord)
mputl(chord_result_1+';'+chord_result_2+';'+chord_result_3,file_results);
//Testing combinations of G#aum
chord_result_1 = DA2(wavread('acordes_teste/G#aum1.wav'));
chord = chord + 1;
disp(chord)
chord_result_2 = DA2(wavread('acordes_teste/G#aum2.wav'));
chord = chord + 1;
disp(chord)
chord_result_3 = DA2(wavread('acordes_teste/G#aum3.wav'));
chord = chord + 1;
disp(chord)
mputl(chord_result_1+';'+chord_result_2+';'+chord_result_3,file_results);
//Testing combinations of G#dim
chord_result_1 = DA2(wavread('acordes_teste/G#dim1.wav'));
chord = chord + 1;
disp(chord)
chord_result_2 = DA2(wavread('acordes_teste/G#dim2.wav'));
chord = chord + 1;
disp(chord)
chord_result_3 = DA2(wavread('acordes_teste/G#dim3.wav'));
chord = chord + 1;
disp(chord)
mputl(chord_result_1+';'+chord_result_2+';'+chord_result_3,file_results);

//Testing combinations of AM
chord_result_1 = DA2(wavread('acordes_teste/AM1.wav'));
chord = chord + 1;
disp(chord)
chord_result_2 = DA2(wavread('acordes_teste/AM2.wav'));
chord = chord + 1;
disp(chord)
chord_result_3 = DA2(wavread('acordes_teste/AM3.wav'));
chord = chord + 1;
disp(chord)
mputl(chord_result_1+';'+chord_result_2+';'+chord_result_3,file_results);
//Testing combinations of Am
chord_result_1 = DA2(wavread('acordes_teste/Am1.wav'));
chord = chord + 1;
disp(chord)
chord_result_2 = DA2(wavread('acordes_teste/Am2.wav'));
chord = chord + 1;
disp(chord)
chord_result_3 = DA2(wavread('acordes_teste/Am3.wav'));
chord = chord + 1;
disp(chord)
mputl(chord_result_1+';'+chord_result_2+';'+chord_result_3,file_results);
//Testing combinations of Aaum
chord_result_1 = DA2(wavread('acordes_teste/Aaum1.wav'));
chord = chord + 1;
disp(chord)
chord_result_2 = DA2(wavread('acordes_teste/Aaum2.wav'));
chord = chord + 1;
disp(chord)
chord_result_3 = DA2(wavread('acordes_teste/Aaum3.wav'));
chord = chord + 1;
disp(chord)
mputl(chord_result_1+';'+chord_result_2+';'+chord_result_3,file_results);
//Testing combinations of Adim
chord_result_1 = DA2(wavread('acordes_teste/Adim1.wav'));
chord = chord + 1;
disp(chord)
chord_result_2 = DA2(wavread('acordes_teste/Adim2.wav'));
chord = chord + 1;
disp(chord)
chord_result_3 = DA2(wavread('acordes_teste/Adim3.wav'));
chord = chord + 1;
disp(chord)
mputl(chord_result_1+';'+chord_result_2+';'+chord_result_3,file_results);

//Testing combinations of A#M
chord_result_1 = DA2(wavread('acordes_teste/A#M1.wav'));
chord = chord + 1;
disp(chord)
chord_result_2 = DA2(wavread('acordes_teste/A#M2.wav'));
chord = chord + 1;
disp(chord)
chord_result_3 = DA2(wavread('acordes_teste/A#M3.wav'));
chord = chord + 1;
disp(chord)
mputl(chord_result_1+';'+chord_result_2+';'+chord_result_3,file_results);
//Testing combinations of A#m
chord_result_1 = DA2(wavread('acordes_teste/A#m1.wav'));
chord = chord + 1;
disp(chord)
chord_result_2 = DA2(wavread('acordes_teste/A#m2.wav'));
chord = chord + 1;
disp(chord)
chord_result_3 = DA2(wavread('acordes_teste/A#m3.wav'));
chord = chord + 1;
disp(chord)
mputl(chord_result_1+';'+chord_result_2+';'+chord_result_3,file_results);
//Testing combinations of A#aum
chord_result_1 = DA2(wavread('acordes_teste/A#aum1.wav'));
chord = chord + 1;
disp(chord)
chord_result_2 = DA2(wavread('acordes_teste/A#aum2.wav'));
chord = chord + 1;
disp(chord)
chord_result_3 = DA2(wavread('acordes_teste/A#aum3.wav'));
chord = chord + 1;
disp(chord)
mputl(chord_result_1+';'+chord_result_2+';'+chord_result_3,file_results);
//Testing combinations of A#dim
chord_result_1 = DA2(wavread('acordes_teste/A#dim1.wav'));
chord = chord + 1;
disp(chord)
chord_result_2 = DA2(wavread('acordes_teste/A#dim2.wav'));
chord = chord + 1;
disp(chord)
chord_result_3 = DA2(wavread('acordes_teste/A#dim3.wav'));
chord = chord + 1;
disp(chord)
mputl(chord_result_1+';'+chord_result_2+';'+chord_result_3,file_results);

//Testing combinations of BM
chord_result_1 = DA2(wavread('acordes_teste/BM1.wav'));
chord = chord + 1;
disp(chord)
chord_result_2 = DA2(wavread('acordes_teste/BM2.wav'));
chord = chord + 1;
disp(chord)
chord_result_3 = DA2(wavread('acordes_teste/BM3.wav'));
chord = chord + 1;
disp(chord)
mputl(chord_result_1+';'+chord_result_2+';'+chord_result_3,file_results);
//Testing combinations of Bm
chord_result_1 = DA2(wavread('acordes_teste/Bm1.wav'));
chord = chord + 1;
disp(chord)
chord_result_2 = DA2(wavread('acordes_teste/Bm2.wav'));
chord = chord + 1;
disp(chord)
chord_result_3 = DA2(wavread('acordes_teste/Bm3.wav'));
chord = chord + 1;
disp(chord)
mputl(chord_result_1+';'+chord_result_2+';'+chord_result_3,file_results);
//Testing combinations of Baum
chord_result_1 = DA2(wavread('acordes_teste/Baum1.wav'));
chord = chord + 1;
disp(chord)
chord_result_2 = DA2(wavread('acordes_teste/Baum2.wav'));
chord = chord + 1;
disp(chord)
chord_result_3 = DA2(wavread('acordes_teste/Baum3.wav'));
chord = chord + 1;
disp(chord)
mputl(chord_result_1+';'+chord_result_2+';'+chord_result_3,file_results);
//Testing combinations of Bdim
chord_result_1 = DA2(wavread('acordes_teste/Bdim1.wav'));
chord = chord + 1;
disp(chord)
chord_result_2 = DA2(wavread('acordes_teste/Bdim2.wav'));
chord = chord + 1;
disp(chord)
chord_result_3 = DA2(wavread('acordes_teste/Bdim3.wav'));
chord = chord + 1;
disp(chord)
mputl(chord_result_1+';'+chord_result_2+';'+chord_result_3,file_results);

mclose(file_results);