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

  //DECODIFICADOR
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
      ACORDETOC = 'Cm';
  end
  if (acordetoc == 4)
      ACORDETOC = 'Cdim';
  end
  if (acordetoc == 5)
      ACORDETOC = 'C#M';
  end
  if (acordetoc == 6)
      ACORDETOC = 'C#m';
  end
  if (acordetoc == 8)
      ACORDETOC = 'C#dim';
  end
  if (acordetoc == 9)
      ACORDETOC = 'DM';
  end
  if (acordetoc == 10)
      ACORDETOC = 'Dm';
  end
  if (acordetoc == 12)
      ACORDETOC = 'Ddim';
  end
  if (acordetoc == 13)
      ACORDETOC = 'D#M ou EbM';
  end
  if (acordetoc == 14)
      ACORDETOC = 'D#m ou Ebm';
  end
  if (acordetoc == 16)
      ACORDETOC = 'D#dim ou Ebdim';
  end
  if (acordetoc == 17)
      ACORDETOC = 'EM';
  end
  if (acordetoc == 18)
      ACORDETOC = 'Em';
  end
  if (acordetoc == 20)
      ACORDETOC = 'Edim';
  end
  if (acordetoc == 21)
      ACORDETOC = 'FM';
  end
  if (acordetoc == 22)
      ACORDETOC = 'Fm';
  end
  if (acordetoc == 24)
      ACORDETOC = 'Fdim';
  end
  if (acordetoc == 25)
      ACORDETOC = 'F#M';
  end
  if (acordetoc == 26)
      ACORDETOC = 'F#m';
  end
  if (acordetoc == 28)
      ACORDETOC = 'F#dim';
  end
  if (acordetoc == 29)
      ACORDETOC = 'GM';
  end
  if (acordetoc == 30)
      ACORDETOC = 'Gm';
  end
  if (acordetoc == 32)
      ACORDETOC = 'Gdim';
  end
  if (acordetoc == 33)
      ACORDETOC = 'G#M ou AbM';
  end
  if (acordetoc == 34)
      ACORDETOC = 'G#m ou Abm';
  end
  if (acordetoc == 36)
      ACORDETOC = 'G#dim ou Abdim';
  end
  if (acordetoc == 37)
      ACORDETOC = 'AM';
  end
  if (acordetoc == 38)
      ACORDETOC = 'Am';
  end
  if (acordetoc == 40)
      ACORDETOC = 'Adim';
  end
  if (acordetoc == 41)
      ACORDETOC = 'A#M ou BbM';
  end
  if (acordetoc == 42)
      ACORDETOC = 'A#m ou Bbm';
  end
  if (acordetoc == 44)
      ACORDETOC = 'A#dim ou Bbdim';
  end
  if (acordetoc == 45)
      ACORDETOC = 'BM';
  end
  if (acordetoc == 46)
      ACORDETOC = 'Bm';
  end
  if (acordetoc == 48)
      ACORDETOC = 'Bdim';

  end
endfunction
