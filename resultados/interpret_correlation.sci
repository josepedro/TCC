function ACORDETOC = interpret_correlation(S2)

acordetoc = find(S2==max(S2));

if (length(acordetoc) > 1)
    acordetoc = acordetoc(1);
end
//DECODIFICADOR

if (acordetoc == 1)
    ACORDETOC = 'CM';
end
if (acordetoc == 2)
    ACORDETOC = 'Cm';
end
if (acordetoc == 3)
    ACORDETOC = 'Caum';
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
if (acordetoc == 7)
    ACORDETOC = 'C#aum';
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
if (acordetoc == 11)
    ACORDETOC = 'Daum';
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
if (acordetoc == 15)
    ACORDETOC = 'D#aum ou Ebaum';
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
if (acordetoc == 19)
    ACORDETOC = 'Eaum';
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
if (acordetoc == 23)
    ACORDETOC = 'Faum';
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
if (acordetoc == 27)
    ACORDETOC = 'F#aum';
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
if (acordetoc == 31)
    ACORDETOC = 'Gaum';
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
if (acordetoc == 35)
    ACORDETOC = 'G#aum ou Abaum';
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
if (acordetoc == 39)
    ACORDETOC = 'Aaum';
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
if (acordetoc == 43)
    ACORDETOC = 'A#aum ou Bbaum';
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
if (acordetoc == 47)
    ACORDETOC = 'Baum';
end
if (acordetoc == 48)
    ACORDETOC = 'Bdim';
end

//select expr,
  //case expr1 then instructions1,
  //case expr2 then instructions2,
  //...
  //case exprn then instructionsn,
  //[else instructions],
//end
 
endfunction