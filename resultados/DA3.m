function [respfreq, notes_time] = DA3(signal, fs)

% building musical notes filters
notes(60, 1050) = 0;

g1 = 0.01;
g2 = 0.05;
g3 = 0.1;
g4 = 0.4;
g5 = 0.8;
g6 = 1;


% octave 1
% Do
notes(1,28) = g1;
notes(1,29) = g2;
notes(1,30) = g3;
notes(1,31) = g4;
notes(1,32) = g5;
notes(1,33) = g6;
notes(1,34) = g5;
notes(1,35) = g4;
notes(1,36) = g3;
notes(1,37) = g2;
notes(1,38) = g1;

% Do#
notes(2,29) = g1;
notes(2,30) = g2;
notes(2,31) = g3;
notes(2,32) = g4;
notes(2,33) = g5;
notes(2,34) = g6;
notes(2,35) = g5;
notes(2,36) = g4;
notes(2,37) = g3;
notes(2,38) = g2;
notes(2,39) = g1;

% Re
notes(3,31) = g1;
notes(3,32) = g2;
notes(3,33) = g3;
notes(3,34) = g4;
notes(3,35) = g5;
notes(3,36) = g6;
notes(3,37) = g5;
notes(3,38) = g4;
notes(3,39) = g3;
notes(3,40) = g2;
notes(3,41) = g1;

% Re#
notes(4,34) = g1;
notes(4,35) = g2;
notes(4,36) = g3;
notes(4,37) = g4;
notes(4,38) = g5;
notes(4,39) = g6;
notes(4,40) = g5;
notes(4,41) = g4;
notes(4,42) = g3;
notes(4,43) = g2;
notes(4,44) = g1;

% Mi
notes(5,36) = g1;
notes(5,37) = g2;
notes(5,38) = g3;
notes(5,39) = g4;
notes(5,40) = g5;
notes(5,41) = g6;
notes(5,42) = g5;
notes(5,43) = g4;
notes(5,44) = g3;
notes(5,45) = g2;
notes(5,46) = g1;

% Fa
notes(6,39) = g1;
notes(6,40) = g2;
notes(6,41) = g3;
notes(6,42) = g4;
notes(6,43) = g5;
notes(6,44) = g6;
notes(6,45) = g5;
notes(6,46) = g4;
notes(6,47) = g3;
notes(6,48) = g2;
notes(6,49) = g1;

% Fa#
notes(7,42) = g1;
notes(7,43) = g2;
notes(7,44) = g3;
notes(7,45) = g4;
notes(7,46) = g5;
notes(7,47) = g6;
notes(7,48) = g5;
notes(7,49) = g4;
notes(7,50) = g3;
notes(7,51) = g2;
notes(7,52) = g1;

% Sol
notes(8,44) = g1;
notes(8,45) = g2;
notes(8,46) = g3;
notes(8,47) = g4;
notes(8,48) = g5;
notes(8,49) = g6;
notes(8,50) = g5;
notes(8,51) = g4;
notes(8,52) = g3;
notes(8,53) = g2;
notes(8,54) = g1;

% Sol#
notes(9,47) = g1;
notes(9,48) = g2;
notes(9,49) = g3;
notes(9,50) = g4;
notes(9,51) = g5;
notes(9,52) = g6;
notes(9,53) = g5;
notes(9,54) = g4;
notes(9,55) = g3;
notes(9,56) = g2;
notes(9,57) = g1;

% La
notes(10,50) = g1;
notes(10,51) = g2;
notes(10,52) = g3;
notes(10,53) = g4;
notes(10,54) = g5;
notes(10,55) = g6;
notes(10,56) = g5;
notes(10,57) = g4;
notes(10,58) = g3;
notes(10,59) = g2;
notes(10,60) = g1;

% La#
notes(11,53) = g1;
notes(11,54) = g2;
notes(11,55) = g3;
notes(11,56) = g4;
notes(11,57) = g5;
notes(11,58) = g6;
notes(11,59) = g5;
notes(11,60) = g4;
notes(11,61) = g3;
notes(11,62) = g2;
notes(11,63) = g1;

% Si
notes(12,57) = g1;
notes(12,58) = g2;
notes(12,59) = g3;
notes(12,60) = g4;
notes(12,61) = g5;
notes(12,62) = g6;
notes(12,63) = g5;
notes(12,64) = g4;
notes(12,65) = g3;
notes(12,66) = g2;
notes(12,67) = g1;


% octave 2
% Do
notes(13,60) = g1;
notes(13,61) = g2;
notes(13,62) = g3;
notes(13,63) = g4;
notes(13,64) = g5;
notes(13,65) = g6;
notes(13,66) = g5;
notes(13,67) = g4;
notes(13,68) = g3;
notes(13,69) = g2;
notes(13,70) = g1;

% Do#
notes(14,64) = g1;
notes(14,65) = g2;
notes(14,66) = g3;
notes(14,67) = g4;
notes(14,68) = g5;
notes(14,69) = g6;
notes(14,70) = g5;
notes(14,71) = g4;
notes(14,72) = g3;
notes(14,73) = g2;
notes(14,74) = g1;

% Re
notes(15,68) = g1;
notes(15,69) = g2;
notes(15,70) = g3;
notes(15,71) = g4;
notes(15,72) = g5;
notes(15,73) = g6;
notes(15,74) = g5;
notes(15,75) = g4;
notes(15,76) = g3;
notes(15,77) = g2;
notes(15,78) = g1;

% Re#
notes(16,73) = g1;
notes(16,74) = g2;
notes(16,75) = g3;
notes(16,76) = g4;
notes(16,77) = g5;
notes(16,78) = g6;
notes(16,79) = g5;
notes(16,80) = g4;
notes(16,81) = g3;
notes(16,82) = g2;
notes(16,83) = g1;

% Mi
notes(17,77) = g1;
notes(17,78) = g2;
notes(17,79) = g3;
notes(17,80) = g4;
notes(17,81) = g5;
notes(17,82) = g6;
notes(17,83) = g5;
notes(17,84) = g4;
notes(17,85) = g3;
notes(17,86) = g2;
notes(17,87) = g1;

% Fa
notes(18,82) = g1;
notes(18,83) = g2;
notes(18,84) = g3;
notes(18,85) = g4;
notes(18,86) = g5;
notes(18,87) = g6;
notes(18,88) = g5;
notes(18,89) = g4;
notes(18,90) = g3;
notes(18,91) = g2;
notes(18,92) = g1;

% Fa#
notes(19,88) = g1;
notes(19,89) = g2;
notes(19,90) = g3;
notes(19,91) = g4;
notes(19,92) = g5;
notes(19,93) = g6;
notes(19,94) = g5;
notes(19,95) = g4;
notes(19,96) = g3;
notes(19,97) = g2;
notes(19,98) = g1;

% Sol
notes(20,93) = g1;
notes(20,94) = g2;
notes(20,95) = g3;
notes(20,96) = g4;
notes(20,97) = g5;
notes(20,98) = g6;
notes(20,99) = g5;
notes(20,100) = g4;
notes(20,101) = g3;
notes(20,102) = g2;
notes(20,103) = g1;

% Sol#
notes(21,101) = g1;
notes(21,100) = g2;
notes(21,101) = g3;
notes(21,102) = g4;
notes(21,103) = g5;
notes(21,104) = g6;
notes(21,105) = g5;
notes(21,106) = g4;
notes(21,107) = g3;
notes(21,108) = g2;
notes(21,109) = g1;

% La
notes(22,105) = g1;
notes(22,106) = g2;
notes(22,107) = g3;
notes(22,108) = g4;
notes(22,109) = g5;
notes(22,110) = g6;
notes(22,111) = g5;
notes(22,112) = g4;
notes(22,113) = g3;
notes(22,114) = g2;
notes(22,115) = g1;

% La#
notes(23,111) = g1;
notes(23,112) = g2;
notes(23,113) = g3;
notes(23,114) = g4;
notes(23,115) = g5;
notes(23,116) = g6;
notes(23,117) = g5;
notes(23,118) = g4;
notes(23,119) = g3;
notes(23,120) = g2;
notes(23,121) = g1;

% Si
notes(24,119) = g1;
notes(24,120) = g2;
notes(24,121) = g3;
notes(24,122) = g4;
notes(24,123) = g5;
notes(24,124) = g6;
notes(24,125) = g5;
notes(24,126) = g4;
notes(24,127) = g3;
notes(24,128) = g2;
notes(24,129) = g1;


% octave 3
% Do
notes(25,126) = g1;
notes(25,127) = g2;
notes(25,128) = g3;
notes(25,129) = g4;
notes(25,130) = g5;
notes(25,131) = g6;
notes(25,132) = g5;
notes(25,133) = g4;
notes(25,134) = g3;
notes(25,135) = g2;
notes(25,136) = g1;

% Do#
notes(26,133) = g1;
notes(26,134) = g2;
notes(26,135) = g3;
notes(26,136) = g4;
notes(26,137) = g5;
notes(26,138) = g6;
notes(26,139) = g5;
notes(26,140) = g4;
notes(26,141) = g3;
notes(26,142) = g2;
notes(26,143) = g1;

% Re
notes(27,142) = g1;
notes(27,143) = g2;
notes(27,144) = g3;
notes(27,145) = g4;
notes(27,146) = g5;
notes(27,147) = g6;
notes(27,148) = g5;
notes(27,149) = g4;
notes(27,150) = g3;
notes(27,151) = g2;
notes(27,152) = g1;

% Re#
notes(28,140) = g1;
notes(28,141) = g2;
notes(28,152) = g3;
notes(28,153) = g4;
notes(28,154) = g5;
notes(28,155) = g6;
notes(28,156) = g5;
notes(28,157) = g4;
notes(28,158) = g3;
notes(28,159) = g2;
notes(28,160) = g1;

% Mi
notes(29,160) = g1;
notes(29,161) = g2;
notes(29,162) = g3;
notes(29,163) = g4;
notes(29,164) = g5;
notes(29,165) = g6;
notes(29,166) = g5;
notes(29,167) = g4;
notes(29,168) = g3;
notes(29,169) = g2;
notes(29,170) = g1;

% Fa
notes(30,170) = g1;
notes(30,171) = g2;
notes(30,172) = g3;
notes(30,173) = g4;
notes(30,174) = g5;
notes(30,175) = g6;
notes(30,176) = g5;
notes(30,177) = g4;
notes(30,178) = g3;
notes(30,189) = g2;
notes(30,190) = g1;

% Fa#
notes(31,180) = g1;
notes(31,181) = g2;
notes(31,182) = g3;
notes(31,183) = g4;
notes(31,184) = g5;
notes(31,185) = g6;
notes(31,186) = g5;
notes(31,187) = g4;
notes(31,188) = g3;
notes(31,189) = g2;
notes(31,190) = g1;

% Sol
notes(32,191) = g1;
notes(32,192) = g2;
notes(32,193) = g3;
notes(32,194) = g4;
notes(32,195) = g5;
notes(32,196) = g6;
notes(32,197) = g5;
notes(32,198) = g4;
notes(32,199) = g3;
notes(32,200) = g2;
notes(32,201) = g1;

% Sol#
notes(33,203) = g1;
notes(33,204) = g2;
notes(33,205) = g3;
notes(33,206) = g4;
notes(33,207) = g5;
notes(33,208) = g6;
notes(33,209) = g5;
notes(33,210) = g4;
notes(33,211) = g3;
notes(33,212) = g2;
notes(33,213) = g1;

% La
notes(34,215) = g1;
notes(34,216) = g2;
notes(34,217) = g3;
notes(34,218) = g4;
notes(34,219) = g5;
notes(34,220) = g6;
notes(34,221) = g5;
notes(34,222) = g4;
notes(34,223) = g3;
notes(34,224) = g2;
notes(34,225) = g1;

% La#
notes(35,228) = g1;
notes(35,229) = g2;
notes(35,230) = g3;
notes(35,231) = g4;
notes(35,232) = g5;
notes(35,233) = g6;
notes(35,234) = g5;
notes(35,235) = g4;
notes(35,236) = g3;
notes(35,237) = g2;
notes(35,238) = g1;

% Si
notes(36,242) = g1;
notes(36,243) = g2;
notes(36,244) = g3;
notes(36,245) = g4;
notes(36,246) = g5;
notes(36,247) = g6;
notes(36,248) = g5;
notes(36,249) = g4;
notes(36,250) = g3;
notes(36,251) = g2;
notes(36,252) = g1;


% octave 4
% Do
notes(37,256) = g1;
notes(37,257) = g2;
notes(37,258) = g3;
notes(37,259) = g4;
notes(37,260) = g5;
notes(37,261) = g6;
notes(37,262) = g5;
notes(37,263) = g4;
notes(37,264) = g3;
notes(37,265) = g2;
notes(37,266) = g1;

% Do#
notes(38,272) = g1;
notes(38,273) = g2;
notes(38,274) = g3;
notes(38,275) = g4;
notes(38,276) = g5;
notes(38,277) = g6;
notes(38,278) = g5;
notes(38,279) = g4;
notes(38,280) = g3;
notes(38,281) = g2;
notes(38,282) = g1;

% Re
notes(39,289) = g1;
notes(39,290) = g2;
notes(39,291) = g3;
notes(39,292) = g4;
notes(39,293) = g5;
notes(39,294) = g6;
notes(39,295) = g5;
notes(39,296) = g4;
notes(39,297) = g3;
notes(39,298) = g2;
notes(39,299) = g1;

% Re#
notes(40,306) = g1;
notes(40,307) = g2;
notes(40,308) = g3;
notes(40,309) = g4;
notes(40,310) = g5;
notes(40,311) = g6;
notes(40,312) = g5;
notes(40,313) = g4;
notes(40,314) = g3;
notes(40,315) = g2;
notes(40,316) = g1;

% Mi
notes(41,325) = g1;
notes(41,326) = g2;
notes(41,327) = g3;
notes(41,328) = g4;
notes(41,329) = g5;
notes(41,330) = g6;
notes(41,331) = g5;
notes(41,332) = g4;
notes(41,333) = g3;
notes(41,334) = g2;
notes(41,335) = g1;

% Fa
notes(42,344) = g1;
notes(42,345) = g2;
notes(42,346) = g3;
notes(42,347) = g4;
notes(42,348) = g5;
notes(42,349) = g6;
notes(42,350) = g5;
notes(42,351) = g4;
notes(42,352) = g3;
notes(42,353) = g2;
notes(42,354) = g1;

% Fa#
notes(43,365) = g1;
notes(43,366) = g2;
notes(43,367) = g3;
notes(43,368) = g4;
notes(43,369) = g5;
notes(43,370) = g6;
notes(43,371) = g5;
notes(43,372) = g4;
notes(43,373) = g3;
notes(43,374) = g2;
notes(43,375) = g1;

% Sol
notes(44,387) = g1;
notes(44,388) = g2;
notes(44,389) = g3;
notes(44,390) = g4;
notes(44,391) = g5;
notes(44,392) = g6;
notes(44,393) = g5;
notes(44,394) = g4;
notes(44,395) = g3;
notes(44,396) = g2;
notes(44,397) = g1;

% Sol#
notes(45,410) = g1;
notes(45,411) = g2;
notes(45,412) = g3;
notes(45,413) = g4;
notes(45,414) = g5;
notes(45,415) = g6;
notes(45,416) = g5;
notes(45,417) = g4;
notes(45,418) = g3;
notes(45,419) = g2;
notes(45,420) = g1;

% La
notes(46,435) = g1;
notes(46,436) = g2;
notes(46,437) = g3;
notes(46,438) = g4;
notes(46,439) = g5;
notes(46,440) = g6;
notes(46,441) = g5;
notes(46,442) = g4;
notes(46,443) = g3;
notes(46,444) = g2;
notes(46,445) = g1;

% La#
notes(47,461) = g1;
notes(47,462) = g2;
notes(47,463) = g3;
notes(47,464) = g4;
notes(47,465) = g5;
notes(47,466) = g6;
notes(47,467) = g5;
notes(47,468) = g4;
notes(47,469) = g3;
notes(47,470) = g2;
notes(47,471) = g1;

% Si
notes(48,489) = g1;
notes(48,490) = g2;
notes(48,491) = g3;
notes(48,492) = g4;
notes(48,493) = g5;
notes(48,494) = g6;
notes(48,495) = g5;
notes(48,496) = g4;
notes(48,497) = g3;
notes(48,498) = g2;
notes(48,499) = g1;


% octave 5
% Do
notes(49,518) = g1;
notes(49,519) = g2;
notes(49,520) = g3;
notes(49,521) = g4;
notes(49,522) = g5;
notes(49,523) = g6;
notes(49,524) = g5;
notes(49,525) = g4;
notes(49,526) = g3;
notes(49,527) = g2;
notes(49,528) = g1;

% Do#
notes(50,549) = g1;
notes(50,550) = g2;
notes(50,551) = g3;
notes(50,552) = g4;
notes(50,553) = g5;
notes(50,554) = g6;
notes(50,555) = g5;
notes(50,556) = g4;
notes(50,557) = g3;
notes(50,558) = g2;
notes(50,559) = g1;

% Re
notes(51,582) = g1;
notes(51,583) = g2;
notes(51,584) = g3;
notes(51,585) = g4;
notes(51,586) = g5;
notes(51,587) = g6;
notes(51,588) = g5;
notes(51,589) = g4;
notes(51,590) = g3;
notes(51,591) = g2;
notes(51,592) = g1;

% Re#
notes(52,617) = g1;
notes(52,618) = g2;
notes(52,619) = g3;
notes(52,620) = g4;
notes(52,621) = g5;
notes(52,622) = g6;
notes(52,623) = g5;
notes(52,624) = g4;
notes(52,625) = g3;
notes(52,626) = g2;
notes(52,627) = g1;

% Mi
notes(53,655) = g1;
notes(53,656) = g2;
notes(53,657) = g3;
notes(53,658) = g4;
notes(53,659) = g5;
notes(53,660) = g6;
notes(53,661) = g5;
notes(53,662) = g4;
notes(53,663) = g3;
notes(53,664) = g2;
notes(53,665) = g1;

% Fa
notes(54,693) = g1;
notes(54,694) = g2;
notes(54,695) = g3;
notes(54,696) = g4;
notes(54,697) = g5;
notes(54,698) = g6;
notes(54,699) = g5;
notes(54,700) = g4;
notes(54,701) = g3;
notes(54,702) = g2;
notes(54,703) = g1;

% Fa#
notes(55,735) = g1;
notes(55,736) = g2;
notes(55,737) = g3;
notes(55,738) = g4;
notes(55,739) = g5;
notes(55,740) = g6;
notes(55,741) = g5;
notes(55,742) = g4;
notes(55,743) = g3;
notes(55,744) = g2;
notes(55,745) = g1;

% Sol
notes(56,779) = g1;
notes(56,780) = g2;
notes(56,781) = g3;
notes(56,782) = g4;
notes(56,783) = g5;
notes(56,784) = g6;
notes(56,785) = g5;
notes(56,786) = g4;
notes(56,787) = g3;
notes(56,788) = g2;
notes(56,789) = g1;

% Sol#
notes(57,825) = g1;
notes(57,826) = g2;
notes(57,827) = g3;
notes(57,828) = g4;
notes(57,829) = g5;
notes(57,830) = g6;
notes(57,831) = g5;
notes(57,832) = g4;
notes(57,833) = g3;
notes(57,834) = g2;
notes(57,835) = g1;

% La
notes(58,875) = g1;
notes(58,876) = g2;
notes(58,877) = g3;
notes(58,878) = g4;
notes(58,879) = g5;
notes(58,880) = g6;
notes(58,881) = g5;
notes(58,882) = g4;
notes(58,883) = g3;
notes(58,884) = g2;
notes(58,885) = g1;

% La#
notes(59,927) = g1;
notes(59,928) = g2;
notes(59,929) = g3;
notes(59,930) = g4;
notes(59,931) = g5;
notes(59,932) = g6;
notes(59,933) = g5;
notes(59,934) = g4;
notes(59,935) = g3;
notes(59,936) = g2;
notes(59,937) = g1;

% Si
notes(60,983) = g1;
notes(60,984) = g2;
notes(60,985) = g3;
notes(60,986) = g4;
notes(60,987) = g5;
notes(60,988) = g6;
notes(60,989) = g5;
notes(60,990) = g4;
notes(60,991) = g3;
notes(60,992) = g2;
notes(60,993) = g1;


% begin to analyse music
time_seconds_total = fix(length(signal)/fs);
notes_time(time_seconds_total, 60) = 0;
for time = 1:time_seconds_total
    signal_time = signal(1+((time-1)*fs):time*fs);
    
    % make downsample to put frequency max in 1050 Hz
    signal_time = downsample(signal_time, 21);
    fs_time = fs/21;

    % get fourier transform
    module_fft = abs(fft(signal_time));
    respfreq(1:fs_time) = 0;
    window_mean = length(signal_time)/fs_time;
    for frequency = 1:fs_time
        respfreq(frequency) = sum(module_fft(1+((frequency-1)*window_mean):frequency*window_mean))/window_mean;
    end

    respfreq = respfreq(1:fix(length(respfreq)/2));

    % get energy of notes
    for note = 1:60
        notes_time(time, note) = sum(respfreq.*notes(note,:));    
    end
end




