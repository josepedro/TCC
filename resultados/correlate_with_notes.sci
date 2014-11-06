function S1 = correlate_with_notes(rfeq)

	exec correlation.sci;

	i = 1; //contador para andar ao longo do vetor

	while (i <= 12)
	     correlacao = coeffcorr(rfeq,notas(i,:));
	     S1(i) = correlacao;    
	    //S1(i) = exp(-(norm(rfeq - notas(i,:))*b));
	    i = i + 1;
	end

endfunction