% this code is to test the relations

clear all

file_darling = open('oh_darling.wav');
file_smoke = open('smoke_on_the_water.wav');
file_i_can = open('i_can_see.wav');

file_darling.data = abs(file_darling.data);
file_smoke.data = abs(file_smoke.data);
file_i_can.data = abs(file_i_can.data);

min_length = min([length(file_smoke.data), length(file_darling.data), length(file_i_can.data)])

correlation_darling_smoke = corrcoef(file_darling.data(1 : min_length), file_smoke.data(1 : min_length));
correlation_darling_smoke = abs(correlation_darling_smoke(1,2))

correlation_darling_i_can = corrcoef(file_darling.data(1 : min_length), file_i_can.data(1 : min_length));
correlation_darling_i_can = abs(correlation_darling_i_can(1,2))

correlation_smoke_i_can = corrcoef(file_smoke.data(1 : min_length), file_i_can.data(1 : min_length));
correlation_smoke_i_can = abs(correlation_smoke_i_can(1,2))

max_correlation = max([correlation_darling_smoke,correlation_darling_i_can,correlation_smoke_i_can])

min_correlation = min([correlation_darling_smoke,correlation_darling_i_can,correlation_smoke_i_can])