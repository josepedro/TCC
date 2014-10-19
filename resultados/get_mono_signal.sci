function som = get_mono_signal(som)
//MONO
som = som(1:length(som));
som = som/max(som);
//--------------------------
endfunction