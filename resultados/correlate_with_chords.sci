function S2 = correlate_with_chords(S1)

exec correlation.sci;
i = 1; //contador para andar ao longo do vetor
while (i <= 48)
     correlacao = coeffcorr(S1,BD(:,i)');
     S2(i) = sqrt(correlacao^2);    
  //  S2(i) = exp(-(norm(S1 - BD(:,i)')*b));

    i = i + 1;
end
endfunction