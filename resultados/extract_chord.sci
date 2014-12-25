function ACORDETOC = extract_chord(S1)

  exec correlation.sci;

  //get the correlations notes
  for index_correlation = 1:12
    correlation = cell2mat(S1(index_correlation));
    s1(index_correlation) = correlation(1);
    notes_frequencies(index_correlation) = correlation(2);
  end

  //get correlations chords
  i = 1;
  for i = 1:48
       correlacao = coeffcorr(s1,BD(:,i)');
       S2(i) = sqrt(correlacao^2);
       i = i + 1;
  end

  acordetoc = find(S2==max(S2));

  //Condition for aum chords
  if (length(acordetoc) > 1)
    //Group 1 - Caum, Eaum, G#aum
    if (acordetoc(1) == 3 & acordetoc(2) == 19 & acordetoc(3) == 35)
      do_frequency = notes_frequencies(1);
      mi_frequency = notes_frequencies(5);
      sol_sus_frequency = notes_frequencies(9);
      if (do_frequency < mi_frequency & do_frequency < sol_sus_frequency)
        ACORDETOC = 'Caum';
      end
      if (mi_frequency < do_frequency & mi_frequency < sol_sus_frequency)
        ACORDETOC = 'Eaum';
      end
      if (sol_sus_frequency < do_frequency & sol_sus_frequency < mi_frequency)
        ACORDETOC = 'G#aum';
      end
    end

    //Group 2 - C#aum, Faum, Aaum
    if (acordetoc(1) == 7 & acordetoc(2) == 23 & acordetoc(3) == 39)
      do_sus_frequency = notes_frequencies(2);
      fa_frequency = notes_frequencies(6);
      la_frequency = notes_frequencies(10);
      if (do_sus_frequency < fa_frequency & do_sus_frequency < la_frequency)
        ACORDETOC = 'C#aum';
      end
      if (fa_frequency < do_sus_frequency & fa_frequency < la_frequency)
        ACORDETOC = 'Faum';
      end
      if (la_frequency < do_sus_frequency & la_frequency < fa_frequency)
        ACORDETOC = 'Aaum';
      end
    end

    //Group 3 - Daum, F#aum, A#aum
    if (acordetoc(1) == 11 & acordetoc(2) == 27 & acordetoc(3) == 43)
      re_frequency = notes_frequencies(3);
      fa_sus_frequency = notes_frequencies(7);
      la_sus_frequency = notes_frequencies(11);
      if (re_frequency < fa_sus_frequency & re_frequency < la_sus_frequency)
        ACORDETOC = 'Daum';
      end
      if (fa_sus_frequency < re_frequency & fa_sus_frequency < la_sus_frequency)
        ACORDETOC = 'F#aum';
      end
      if (la_sus_frequency < re_frequency & la_sus_frequency < fa_sus_frequency)
        ACORDETOC = 'A#aum';
      end
    end

    //Group 4 - D#aum, Gaum, Baum
    if (acordetoc(1) == 15 & acordetoc(2) == 31 & acordetoc(3) == 47)
      re_sus_frequency = notes_frequencies(4);
      sol_frequency = notes_frequencies(8);
      si_frequency = notes_frequencies(12);
      if (re_sus_frequency < sol_frequency & re_sus_frequency < si_frequency)
        ACORDETOC = 'D#aum';
      end
      if (sol_frequency < re_sus_frequency & sol_frequency < si_frequency)
        ACORDETOC = 'Gaum';
      end
      if (si_frequency < re_sus_frequency & si_frequency < sol_frequency)
        ACORDETOC = 'Baum';
      end
    end
  end

  if (acordetoc == 1)
      tonic_frequency = notes_frequencies(1);
      tierce_frequency = notes_frequencies(5);
      quint_frequency = notes_frequencies(8);
      if (tonic_frequency < tierce_frequency & tonic_frequency < quint_frequency)
        ACORDETOC = 'C';
      end
      if (tierce_frequency < tonic_frequency & tierce_frequency < quint_frequency)
        ACORDETOC = 'C/E';
      end
      if (quint_frequency < tonic_frequency & quint_frequency < tierce_frequency)
        ACORDETOC = 'C/G';
      end
  end

  if (acordetoc == 2)
      tonic_frequency = notes_frequencies(1);
      tierce_frequency = notes_frequencies(4);
      quint_frequency = notes_frequencies(8);
      if (tonic_frequency < tierce_frequency & tonic_frequency < quint_frequency)
        ACORDETOC = 'Cm';
      end
      if (tierce_frequency < tonic_frequency & tierce_frequency < quint_frequency)
        ACORDETOC = 'Cm/D#';
      end
      if (quint_frequency < tonic_frequency & quint_frequency < tierce_frequency)
        ACORDETOC = 'Cm/G';
      end
  end

  if (acordetoc == 4)
      tonic_frequency = notes_frequencies(1);
      tierce_frequency = notes_frequencies(4);
      quint_frequency = notes_frequencies(7);
      if (tonic_frequency < tierce_frequency & tonic_frequency < quint_frequency)
        ACORDETOC = 'Cdim';
      end
      if (tierce_frequency < tonic_frequency & tierce_frequency < quint_frequency)
        ACORDETOC = 'Cdim/D#';
      end
      if (quint_frequency < tonic_frequency & quint_frequency < tierce_frequency)
        ACORDETOC = 'Cdim/F#';
      end
  end

  if (acordetoc == 5)
      tonic_frequency = notes_frequencies(2);
      tierce_frequency = notes_frequencies(6);
      quint_frequency = notes_frequencies(9);
      if (tonic_frequency < tierce_frequency & tonic_frequency < quint_frequency)
        ACORDETOC = 'C#';
      end
      if (tierce_frequency < tonic_frequency & tierce_frequency < quint_frequency)
        ACORDETOC = 'C#/F';
      end
      if (quint_frequency < tonic_frequency & quint_frequency < tierce_frequency)
        ACORDETOC = 'C#/G#';
      end
  end

  if (acordetoc == 6)
      tonic_frequency = notes_frequencies(2);
      tierce_frequency = notes_frequencies(5);
      quint_frequency = notes_frequencies(9);
      if (tonic_frequency < tierce_frequency & tonic_frequency < quint_frequency)
        ACORDETOC = 'C#m';
      end
      if (tierce_frequency < tonic_frequency & tierce_frequency < quint_frequency)
        ACORDETOC = 'C#m/E';
      end
      if (quint_frequency < tonic_frequency & quint_frequency < tierce_frequency)
        ACORDETOC = 'C#m/G#';
      end
  end

  if (acordetoc == 8)
      tonic_frequency = notes_frequencies(2);
      tierce_frequency = notes_frequencies(5);
      quint_frequency = notes_frequencies(8);
      if (tonic_frequency < tierce_frequency & tonic_frequency < quint_frequency)
        ACORDETOC = 'C#dim';
      end
      if (tierce_frequency < tonic_frequency & tierce_frequency < quint_frequency)
        ACORDETOC = 'C#dim/E';
      end
      if (quint_frequency < tonic_frequency & quint_frequency < tierce_frequency)
        ACORDETOC = 'C#dim/G';
      end
  end

  if (acordetoc == 9)
      tonic_frequency = notes_frequencies(3);
      tierce_frequency = notes_frequencies(7);
      quint_frequency = notes_frequencies(10);
      if (tonic_frequency < tierce_frequency & tonic_frequency < quint_frequency)
        ACORDETOC = 'D';
      end
      if (tierce_frequency < tonic_frequency & tierce_frequency < quint_frequency)
        ACORDETOC = 'D/F#';
      end
      if (quint_frequency < tonic_frequency & quint_frequency < tierce_frequency)
        ACORDETOC = 'D/A';
      end
  end

  if (acordetoc == 10)
      tonic_frequency = notes_frequencies(3);
      tierce_frequency = notes_frequencies(6);
      quint_frequency = notes_frequencies(10);
      if (tonic_frequency < tierce_frequency & tonic_frequency < quint_frequency)
        ACORDETOC = 'Dm';
      end
      if (tierce_frequency < tonic_frequency & tierce_frequency < quint_frequency)
        ACORDETOC = 'Dm/F';
      end
      if (quint_frequency < tonic_frequency & quint_frequency < tierce_frequency)
        ACORDETOC = 'Dm/A';
      end
  end

  if (acordetoc == 12)
      tonic_frequency = notes_frequencies(3);
      tierce_frequency = notes_frequencies(6);
      quint_frequency = notes_frequencies(9);
      if (tonic_frequency < tierce_frequency & tonic_frequency < quint_frequency)
        ACORDETOC = 'Ddim';
      end
      if (tierce_frequency < tonic_frequency & tierce_frequency < quint_frequency)
        ACORDETOC = 'Ddim/F';
      end
      if (quint_frequency < tonic_frequency & quint_frequency < tierce_frequency)
        ACORDETOC = 'Ddim/G#';
      end
  end

  if (acordetoc == 13)
      tonic_frequency = notes_frequencies(4);
      tierce_frequency = notes_frequencies(8);
      quint_frequency = notes_frequencies(11);
      if (tonic_frequency < tierce_frequency & tonic_frequency < quint_frequency)
        ACORDETOC = 'D#';
      end
      if (tierce_frequency < tonic_frequency & tierce_frequency < quint_frequency)
        ACORDETOC = 'D#/G';
      end
      if (quint_frequency < tonic_frequency & quint_frequency < tierce_frequency)
        ACORDETOC = 'D#/A#';
      end
  end

  if (acordetoc == 14)
      tonic_frequency = notes_frequencies(4);
      tierce_frequency = notes_frequencies(7);
      quint_frequency = notes_frequencies(11);
      if (tonic_frequency < tierce_frequency & tonic_frequency < quint_frequency)
        ACORDETOC = 'D#m';
      end
      if (tierce_frequency < tonic_frequency & tierce_frequency < quint_frequency)
        ACORDETOC = 'D#m/F#';
      end
      if (quint_frequency < tonic_frequency & quint_frequency < tierce_frequency)
        ACORDETOC = 'D#m/A#';
      end
  end

  if (acordetoc == 16)
      tonic_frequency = notes_frequencies(4);
      tierce_frequency = notes_frequencies(7);
      quint_frequency = notes_frequencies(10);
      if (tonic_frequency < tierce_frequency & tonic_frequency < quint_frequency)
        ACORDETOC = 'D#dim';
      end
      if (tierce_frequency < tonic_frequency & tierce_frequency < quint_frequency)
        ACORDETOC = 'D#dim/F#';
      end
      if (quint_frequency < tonic_frequency & quint_frequency < tierce_frequency)
        ACORDETOC = 'D#dim/A';
      end
  end

  if (acordetoc == 17)
      tonic_frequency = notes_frequencies(5);
      tierce_frequency = notes_frequencies(9);
      quint_frequency = notes_frequencies(12);
      if (tonic_frequency < tierce_frequency & tonic_frequency < quint_frequency)
        ACORDETOC = 'E';
      end
      if (tierce_frequency < tonic_frequency & tierce_frequency < quint_frequency)
        ACORDETOC = 'E/G#';
      end
      if (quint_frequency < tonic_frequency & quint_frequency < tierce_frequency)
        ACORDETOC = 'E/B';
      end
  end

  if (acordetoc == 18)
      tonic_frequency = notes_frequencies(5);
      tierce_frequency = notes_frequencies(8);
      quint_frequency = notes_frequencies(12);
      if (tonic_frequency < tierce_frequency & tonic_frequency < quint_frequency)
        ACORDETOC = 'Em';
      end
      if (tierce_frequency < tonic_frequency & tierce_frequency < quint_frequency)
        ACORDETOC = 'Em/G';
      end
      if (quint_frequency < tonic_frequency & quint_frequency < tierce_frequency)
        ACORDETOC = 'Em/B';
      end
  end

  if (acordetoc == 20)
      tonic_frequency = notes_frequencies(5);
      tierce_frequency = notes_frequencies(8);
      quint_frequency = notes_frequencies(11);
      if (tonic_frequency < tierce_frequency & tonic_frequency < quint_frequency)
        ACORDETOC = 'Edim';
      end
      if (tierce_frequency < tonic_frequency & tierce_frequency < quint_frequency)
        ACORDETOC = 'Edim/G';
      end
      if (quint_frequency < tonic_frequency & quint_frequency < tierce_frequency)
        ACORDETOC = 'Edim/A#';
      end
  end

  if (acordetoc == 21)
      tonic_frequency = notes_frequencies(6);
      tierce_frequency = notes_frequencies(10);
      quint_frequency = notes_frequencies(1);
      if (tonic_frequency < tierce_frequency & tonic_frequency < quint_frequency)
        ACORDETOC = 'F';
      end
      if (tierce_frequency < tonic_frequency & tierce_frequency < quint_frequency)
        ACORDETOC = 'F/A';
      end
      if (quint_frequency < tonic_frequency & quint_frequency < tierce_frequency)
        ACORDETOC = 'F/C';
      end
  end

  if (acordetoc == 22)
      tonic_frequency = notes_frequencies(6);
      tierce_frequency = notes_frequencies(9);
      quint_frequency = notes_frequencies(1);
      if (tonic_frequency < tierce_frequency & tonic_frequency < quint_frequency)
        ACORDETOC = 'Fm';
      end
      if (tierce_frequency < tonic_frequency & tierce_frequency < quint_frequency)
        ACORDETOC = 'Fm/G#';
      end
      if (quint_frequency < tonic_frequency & quint_frequency < tierce_frequency)
        ACORDETOC = 'Fm/C';
      end
  end

  if (acordetoc == 24)
      tonic_frequency = notes_frequencies(6);
      tierce_frequency = notes_frequencies(9);
      quint_frequency = notes_frequencies(12);
      if (tonic_frequency < tierce_frequency & tonic_frequency < quint_frequency)
        ACORDETOC = 'Fdim';
      end
      if (tierce_frequency < tonic_frequency & tierce_frequency < quint_frequency)
        ACORDETOC = 'Fdim/G#';
      end
      if (quint_frequency < tonic_frequency & quint_frequency < tierce_frequency)
        ACORDETOC = 'Fdim/B';
      end
  end

  if (acordetoc == 25)
      tonic_frequency = notes_frequencies(7);
      tierce_frequency = notes_frequencies(11);
      quint_frequency = notes_frequencies(2);
      if (tonic_frequency < tierce_frequency & tonic_frequency < quint_frequency)
        ACORDETOC = 'F#';
      end
      if (tierce_frequency < tonic_frequency & tierce_frequency < quint_frequency)
        ACORDETOC = 'F#/A#';
      end
      if (quint_frequency < tonic_frequency & quint_frequency < tierce_frequency)
        ACORDETOC = 'F#/C#';
      end
  end

  if (acordetoc == 26)
      tonic_frequency = notes_frequencies(7);
      tierce_frequency = notes_frequencies(10);
      quint_frequency = notes_frequencies(2);
      if (tonic_frequency < tierce_frequency & tonic_frequency < quint_frequency)
        ACORDETOC = 'F#m';
      end
      if (tierce_frequency < tonic_frequency & tierce_frequency < quint_frequency)
        ACORDETOC = 'F#m/A';
      end
      if (quint_frequency < tonic_frequency & quint_frequency < tierce_frequency)
        ACORDETOC = 'F#m/C#';
      end
  end

  if (acordetoc == 28)
      tonic_frequency = notes_frequencies(7);
      tierce_frequency = notes_frequencies(10);
      quint_frequency = notes_frequencies(1);
      if (tonic_frequency < tierce_frequency & tonic_frequency < quint_frequency)
        ACORDETOC = 'F#dim';
      end
      if (tierce_frequency < tonic_frequency & tierce_frequency < quint_frequency)
        ACORDETOC = 'F#dim/A';
      end
      if (quint_frequency < tonic_frequency & quint_frequency < tierce_frequency)
        ACORDETOC = 'F#dim/C';
      end
  end

  if (acordetoc == 29)
      tonic_frequency = notes_frequencies(8);
      tierce_frequency = notes_frequencies(12);
      quint_frequency = notes_frequencies(3);
      if (tonic_frequency < tierce_frequency & tonic_frequency < quint_frequency)
        ACORDETOC = 'G';
      end
      if (tierce_frequency < tonic_frequency & tierce_frequency < quint_frequency)
        ACORDETOC = 'G/B';
      end
      if (quint_frequency < tonic_frequency & quint_frequency < tierce_frequency)
        ACORDETOC = 'G/D';
      end
  end

  if (acordetoc == 30)
      tonic_frequency = notes_frequencies(8);
      tierce_frequency = notes_frequencies(11);
      quint_frequency = notes_frequencies(3);
      if (tonic_frequency < tierce_frequency & tonic_frequency < quint_frequency)
        ACORDETOC = 'Gm';
      end
      if (tierce_frequency < tonic_frequency & tierce_frequency < quint_frequency)
        ACORDETOC = 'Gm/A#';
      end
      if (quint_frequency < tonic_frequency & quint_frequency < tierce_frequency)
        ACORDETOC = 'Gm/D';
      end
  end

  if (acordetoc == 32)
      tonic_frequency = notes_frequencies(8);
      tierce_frequency = notes_frequencies(11);
      quint_frequency = notes_frequencies(2);
      if (tonic_frequency < tierce_frequency & tonic_frequency < quint_frequency)
        ACORDETOC = 'Gdim';
      end
      if (tierce_frequency < tonic_frequency & tierce_frequency < quint_frequency)
        ACORDETOC = 'Gdim/A#';
      end
      if (quint_frequency < tonic_frequency & quint_frequency < tierce_frequency)
        ACORDETOC = 'Gdim/C#';
      end
  end

  if (acordetoc == 33)
      tonic_frequency = notes_frequencies(9);
      tierce_frequency = notes_frequencies(1);
      quint_frequency = notes_frequencies(4);
      if (tonic_frequency < tierce_frequency & tonic_frequency < quint_frequency)
        ACORDETOC = 'G#';
      end
      if (tierce_frequency < tonic_frequency & tierce_frequency < quint_frequency)
        ACORDETOC = 'G#/C';
      end
      if (quint_frequency < tonic_frequency & quint_frequency < tierce_frequency)
        ACORDETOC = 'G#/D#';
      end
  end

  if (acordetoc == 34)
      tonic_frequency = notes_frequencies(9);
      tierce_frequency = notes_frequencies(12);
      quint_frequency = notes_frequencies(4);
      if (tonic_frequency < tierce_frequency & tonic_frequency < quint_frequency)
        ACORDETOC = 'G#m';
      end
      if (tierce_frequency < tonic_frequency & tierce_frequency < quint_frequency)
        ACORDETOC = 'G#m/B';
      end
      if (quint_frequency < tonic_frequency & quint_frequency < tierce_frequency)
        ACORDETOC = 'G#m/D#';
      end
  end

  if (acordetoc == 36)
      tonic_frequency = notes_frequencies(9);
      tierce_frequency = notes_frequencies(12);
      quint_frequency = notes_frequencies(3);
      if (tonic_frequency < tierce_frequency & tonic_frequency < quint_frequency)
        ACORDETOC = 'G#dim';
      end
      if (tierce_frequency < tonic_frequency & tierce_frequency < quint_frequency)
        ACORDETOC = 'G#dim/B';
      end
      if (quint_frequency < tonic_frequency & quint_frequency < tierce_frequency)
        ACORDETOC = 'G#dim/D';
      end

  end
  if (acordetoc == 37)
      tonic_frequency = notes_frequencies(10);
      tierce_frequency = notes_frequencies(2);
      quint_frequency = notes_frequencies(5);
      if (tonic_frequency < tierce_frequency & tonic_frequency < quint_frequency)
        ACORDETOC = 'A';
      end
      if (tierce_frequency < tonic_frequency & tierce_frequency < quint_frequency)
        ACORDETOC = 'A/C#';
      end
      if (quint_frequency < tonic_frequency & quint_frequency < tierce_frequency)
        ACORDETOC = 'A/E';
      end
  end

  if (acordetoc == 38)
      ACORDETOC = 'Am';
      tonic_frequency = notes_frequencies(10);
      tierce_frequency = notes_frequencies(1);
      quint_frequency = notes_frequencies(5);
      if (tonic_frequency < tierce_frequency & tonic_frequency < quint_frequency)
        ACORDETOC = 'Am';
      end
      if (tierce_frequency < tonic_frequency & tierce_frequency < quint_frequency)
        ACORDETOC = 'Am/C';
      end
      if (quint_frequency < tonic_frequency & quint_frequency < tierce_frequency)
        ACORDETOC = 'Am/E';
      end
  end

  if (acordetoc == 40)
      tonic_frequency = notes_frequencies(10);
      tierce_frequency = notes_frequencies(1);
      quint_frequency = notes_frequencies(4);
      if (tonic_frequency < tierce_frequency & tonic_frequency < quint_frequency)
        ACORDETOC = 'Adim';
      end
      if (tierce_frequency < tonic_frequency & tierce_frequency < quint_frequency)
        ACORDETOC = 'Adim/C';
      end
      if (quint_frequency < tonic_frequency & quint_frequency < tierce_frequency)
        ACORDETOC = 'Adim/D#';
      end
  end

  if (acordetoc == 41)
      tonic_frequency = notes_frequencies(11);
      tierce_frequency = notes_frequencies(3);
      quint_frequency = notes_frequencies(6);
      if (tonic_frequency < tierce_frequency & tonic_frequency < quint_frequency)
        ACORDETOC = 'A#';
      end
      if (tierce_frequency < tonic_frequency & tierce_frequency < quint_frequency)
        ACORDETOC = 'A#/D';
      end
      if (quint_frequency < tonic_frequency & quint_frequency < tierce_frequency)
        ACORDETOC = 'A#/F';
      end
  end

  if (acordetoc == 42)
      tonic_frequency = notes_frequencies(11);
      tierce_frequency = notes_frequencies(2);
      quint_frequency = notes_frequencies(6);
      if (tonic_frequency < tierce_frequency & tonic_frequency < quint_frequency)
        ACORDETOC = 'A#m';
      end
      if (tierce_frequency < tonic_frequency & tierce_frequency < quint_frequency)
        ACORDETOC = 'A#m/C#';
      end
      if (quint_frequency < tonic_frequency & quint_frequency < tierce_frequency)
        ACORDETOC = 'A#m/F';
      end
  end

  if (acordetoc == 44)
      tonic_frequency = notes_frequencies(11);
      tierce_frequency = notes_frequencies(2);
      quint_frequency = notes_frequencies(5);
      if (tonic_frequency < tierce_frequency & tonic_frequency < quint_frequency)
        ACORDETOC = 'A#dim';
      end
      if (tierce_frequency < tonic_frequency & tierce_frequency < quint_frequency)
        ACORDETOC = 'A#dim/C#';
      end
      if (quint_frequency < tonic_frequency & quint_frequency < tierce_frequency)
        ACORDETOC = 'A#dim/E';
      end
  end

  if (acordetoc == 45)
      tonic_frequency = notes_frequencies(12);
      tierce_frequency = notes_frequencies(4);
      quint_frequency = notes_frequencies(7);
      if (tonic_frequency < tierce_frequency & tonic_frequency < quint_frequency)
        ACORDETOC = 'B';
      end
      if (tierce_frequency < tonic_frequency & tierce_frequency < quint_frequency)
        ACORDETOC = 'B/D#';
      end
      if (quint_frequency < tonic_frequency & quint_frequency < tierce_frequency)
        ACORDETOC = 'B/F#';
      end
  end

  if (acordetoc == 46)
      tonic_frequency = notes_frequencies(12);
      tierce_frequency = notes_frequencies(3);
      quint_frequency = notes_frequencies(7);
      if (tonic_frequency < tierce_frequency & tonic_frequency < quint_frequency)
        ACORDETOC = 'Bm';
      end
      if (tierce_frequency < tonic_frequency & tierce_frequency < quint_frequency)
        ACORDETOC = 'Bm/D';
      end
      if (quint_frequency < tonic_frequency & quint_frequency < tierce_frequency)
        ACORDETOC = 'Bm/F#';
      end
  end

  if (acordetoc == 48)
      tonic_frequency = notes_frequencies(12);
      tierce_frequency = notes_frequencies(3);
      quint_frequency = notes_frequencies(6);
      if (tonic_frequency < tierce_frequency & tonic_frequency < quint_frequency)
        ACORDETOC = 'Bdim';
      end
      if (tierce_frequency < tonic_frequency & tierce_frequency < quint_frequency)
        ACORDETOC = 'Bdim/D';
      end
      if (quint_frequency < tonic_frequency & quint_frequency < tierce_frequency)
        ACORDETOC = 'Bdim/F';
      end
  end

endfunction
