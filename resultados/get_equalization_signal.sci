function rfeq = get_equalization_signal(respfreq)
	//EQUALIZACAO
	x = gsort(respfreq);
	x = x(length(respfreq)-3);
	a = (max(respfreq)-min(respfreq))/x;
	b = max(respfreq)-a*x;
	rfeq = (respfreq-b)/a;
endfunction