function DA2 = DA2(som)
//
//                         DA2.m (Detector de Acordes 2)
//       
//   Autor: José Pedro de Santana Neto
//   Matricula: 09/0119355
// 
// 		Entrada:
//   		som: Sinal de audio
//   
// 		Saída:
//   		resultado: Acorde tocado
//
//
exec get_mono_signal.sci;
exec get_fourier_transform.sci;
exec get_equalization_signal.sci;
exec correlate_with_notes.sci;
exec correlate_with_chords.sci;
exec interpret_correlation.sci;

//Load notes in constants variables
exec load_notes_constants.sci;

//Load chords in constants variables
exec load_chords_constants.sci;

//Get one dimensional array of signal 
som = get_mono_signal(som);

//Get array with slots that are frequencies 
respfreq = get_fourier_transform(som);
scf(1); 
plot(respfreq,'ro-');

//Get signal equalizated with maximum is 1
rfeq = get_equalization_signal(respfreq);

//Correlate frequencies with array of notes
scf(2);
S1 = correlate_with_notes(rfeq);
plot(S1,'ro-');

//Correlate frequencies with array of chords
scf(3);
S2 = correlate_with_chords(S1);
plot(S2,'ro-');

//Get the chord inferred
ACORDETOC = interpret_correlation(S2);

DA2 = ACORDETOC;

endfunction