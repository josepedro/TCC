function S1 = correlate_with_notes(rfeq)

	exec correlation_notes.sci;

	i = 1; //contador para andar ao longo do vetor

	S1 = cell(1,12);
	while (i <= 12)
	     [correlation_note, frequency_max]  = coeffcorr_notes(rfeq,notas(i,:));
			 //disp(i, correlation_note, frequency_max)
	     S1(i).entries = [correlation_note, frequency_max];
	    //S1(i) = exp(-(norm(rfeq - notas(i,:))*b));
	    i = i + 1;
	end


endfunction
