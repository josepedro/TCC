% this code is the first experiment about styles eletronica, forro, mpb, pagode, rock, sertanejo

clear all;

for number_style = 1 : 6


	file_eletronica = open('estilos/eletronica/1.wav');
	file_eletronica.data = abs(file_eletronica.data);

	path_part_1 = 'estilos/';
	array_styles = {'eletronica'; 'forro'; 'mpb'; 'pagode'; 'rock'; 'sertanejo'};
	
	path_test_1 = strcat(path_part_1, char(array_styles(number_style)), '/2.wav');
	path_test_2 = strcat(path_part_1, char(array_styles(number_style)), '/3.wav');
	path_test_3 = strcat(path_part_1, char(array_styles(number_style)), '/4.wav');
	
	file_test_1 = open(path_test_1);
	file_test_2 = open(path_test_2);
	file_test_3 = open(path_test_3);

	file_test_1.data = abs(file_test_1.data);
	file_test_2.data = abs(file_test_2.data);
	file_test_3.data = abs(file_test_3.data);

	min_length = min([length(file_eletronica.data), length(file_test_1.data), length(file_test_2.data), length(file_test_3.data)]);

	correlation_1 = corrcoef(file_eletronica.data(1 : min_length), file_test_1.data(1 : min_length));
	correlation_1 = abs(correlation_1(1,2))

	correlation_2 = corrcoef(file_eletronica.data(1 : min_length), file_test_2.data(1 : min_length));
	correlation_2 = abs(correlation_2(1,2))

	correlation_3 = corrcoef(file_eletronica.data(1 : min_length), file_test_3.data(1 : min_length));
	correlation_3 = abs(correlation_3(1,2))

	mean_correlation = mean([correlation_1, correlation_2, correlation_3])

	
end