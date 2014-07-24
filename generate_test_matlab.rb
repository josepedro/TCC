name_file_test = "frequency_meter_test.m"

file_number = 30
file_string = "fails = 0;\n"
for count_file in 1 .. 26
	file_number_string = "%d" % file_number
	file_string = file_string + "peaks_" + file_number_string + " = frequency_meter('metronomo/"+file_number_string+"bpm.wav');\n" + 
	"if (peaks_"+file_number_string+" == "+file_number_string+")\n" + 
	"result_"+file_number_string+" = 'true'\n" +
	"else\n" + 
	"result_"+file_number_string+" = 'false'\n" + 
	"peaks_" + file_number_string + "\n" + 
	"fails = fails + 1;\n" + 
	"end\n" + "\n\n"
	file_number = file_number + 10
end

file_string = file_string + "fails"

file_test = File.open(name_file_test, 'w')
file_test.print file_string