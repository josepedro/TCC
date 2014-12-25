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
exec extract_chord.sci;

//Load notes in constants variables
exec load_notes_constants.sci;

//Load chords in constants variables
exec load_chords_constants.sci;

//Get one dimensional array of signal
som = get_mono_signal(som);

//Get array with slots that are frequencies
respfreq = get_fourier_transform(som);
//scf(1);
//plot(respfreq, '-o');
//xtitle('Resposta em Frequência', 'Frequência (Hz)', 'Resposta');
//mtlb_axis([1, 1000, 0, 1.1]);

//Get signal equalizated with maximum is 1
//rfeq = get_equalization_signal(respfreq);

//Correlate frequencies with array of notes
//scf(2);
S1 = correlate_with_notes(respfreq);
//bar(S1);
//a=gca();
//notas = ["do" "do#" "re" "re#" "mi" "fa" "fa#" "sol" "sol#" "la" "la#" "si"]
//notas_slot = [1:12]
//newTicks= a.x_ticks;
//newTicks(2)= notas_slot;
//newTicks(3)= notas;
//a.x_ticks=newTicks;


//Correlate frequencies with array of chords
//scf(3);
//S2 = correlate_with_chords(S1);
//bar(S2);
//a=gca();
//notas = ["CM" "Cm" "Caum" "Cdim" "C#M" "C#m" "C#aum" "C#dim" ...
//"DM" "Dm" "Daum" "Ddim" ...
//"D#M" "D#m" "D#aum" "D#dim" ...
//"EM" "Em" "Eaum" "Edim" ...
//"FM" "Fm" "Faum" "Fdim" ...
//"F#M" "F#m" "F#aum" "F#dim" ...
//"GM" "Gm" "Gaum" "Gdim" ...
//"G#M" "G#m" "G#aum" "G#dim" ...
//"AM" "Am" "Aaum" "Adim" ...
//"A#M" "A#m" "A#aum" "A#dim" ...
//"BM" "Bm" "Baum" "Bdim"]
//notas_slot = [1:48]
//newTicks= a.x_ticks;
//newTicks(2)= notas_slot;
//newTicks(3)= notas;
//a.x_ticks=newTicks;


//Get the chord inferred
//ACORDETOC = interpret_correlation(S2);
//ACORDETOC = interpret_correlation(S2);
ACORDETOC = extract_chord(S1);

DA2 = ACORDETOC;

endfunction
