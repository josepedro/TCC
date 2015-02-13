function [notes_time, chords_time] = DA3(signal, fs)

% building musical notes filters
notes(60, 1050) = 0;

g1 = 0.01;
g2 = 0.05;
g3 = 0.1;
g4 = 0.4;
g5 = 0.8;
g6 = 1;

% octave 1
% Do1
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
% harmonic
notes(1,60) = g1;
notes(1,61) = g2;
notes(1,62) = g3;
notes(1,63) = g4;
notes(1,64) = g5;
notes(1,65) = g6;
notes(1,66) = g5;
notes(1,67) = g4;
notes(1,68) = g3;
notes(1,69) = g2;
notes(1,70) = g1;

% Do#1
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
% harmonic
notes(2,64) = g1;
notes(2,65) = g2;
notes(2,66) = g3;
notes(2,67) = g4;
notes(2,68) = g5;
notes(2,69) = g6;
notes(2,70) = g5;
notes(2,71) = g4;
notes(2,72) = g3;
notes(2,73) = g2;
notes(2,74) = g1;

% Re1
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
% harmonic
notes(3,68) = g1;
notes(3,69) = g2;
notes(3,70) = g3;
notes(3,71) = g4;
notes(3,72) = g5;
notes(3,73) = g6;
notes(3,74) = g5;
notes(3,75) = g4;
notes(3,76) = g3;
notes(3,77) = g2;
notes(3,78) = g1;

% Re#1
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
% harmonic
notes(4,73) = g1;
notes(4,74) = g2;
notes(4,75) = g3;
notes(4,76) = g4;
notes(4,77) = g5;
notes(4,78) = g6;
notes(4,79) = g5;
notes(4,80) = g4;
notes(4,81) = g3;
notes(4,82) = g2;
notes(4,83) = g1;

% Mi1
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
% harmonic
notes(5,77) = g1;
notes(5,78) = g2;
notes(5,79) = g3;
notes(5,80) = g4;
notes(5,81) = g5;
notes(5,82) = g6;
notes(5,83) = g5;
notes(5,84) = g4;
notes(5,85) = g3;
notes(5,86) = g2;
notes(5,87) = g1;

% Fa1
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
% harmonic
notes(6,82) = g1;
notes(6,83) = g2;
notes(6,84) = g3;
notes(6,85) = g4;
notes(6,86) = g5;
notes(6,87) = g6;
notes(6,88) = g5;
notes(6,89) = g4;
notes(6,90) = g3;
notes(6,91) = g2;
notes(6,92) = g1;

% Fa#1
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
% harmonic
notes(7,88) = g1;
notes(7,89) = g2;
notes(7,90) = g3;
notes(7,91) = g4;
notes(7,92) = g5;
notes(7,93) = g6;
notes(7,94) = g5;
notes(7,95) = g4;
notes(7,96) = g3;
notes(7,97) = g2;
notes(7,98) = g1;

% Sol1
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
% harmonic
notes(8,93) = g1;
notes(8,94) = g2;
notes(8,95) = g3;
notes(8,96) = g4;
notes(8,97) = g5;
notes(8,98) = g6;
notes(8,99) = g5;
notes(8,100) = g4;
notes(8,101) = g3;
notes(8,102) = g2;
notes(8,103) = g1;

% Sol#1
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
% harmonic
notes(9,101) = g1;
notes(9,100) = g2;
notes(9,101) = g3;
notes(9,102) = g4;
notes(9,103) = g5;
notes(9,104) = g6;
notes(9,105) = g5;
notes(9,106) = g4;
notes(9,107) = g3;
notes(9,108) = g2;
notes(9,109) = g1;

% La1
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
% harmonic
notes(10,105) = g1;
notes(10,106) = g2;
notes(10,107) = g3;
notes(10,108) = g4;
notes(10,109) = g5;
notes(10,110) = g6;
notes(10,111) = g5;
notes(10,112) = g4;
notes(10,113) = g3;
notes(10,114) = g2;
notes(10,115) = g1;

% La#1
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
% harmonic
notes(11,111) = g1;
notes(11,112) = g2;
notes(11,113) = g3;
notes(11,114) = g4;
notes(11,115) = g5;
notes(11,116) = g6;
notes(11,117) = g5;
notes(11,118) = g4;
notes(11,119) = g3;
notes(11,120) = g2;
notes(11,121) = g1;

% Si1
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
% harmonic
notes(12,119) = g1;
notes(12,120) = g2;
notes(12,121) = g3;
notes(12,122) = g4;
notes(12,123) = g5;
notes(12,124) = g6;
notes(12,125) = g5;
notes(12,126) = g4;
notes(12,127) = g3;
notes(12,128) = g2;
notes(12,129) = g1;


% octave 2
% Do2
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
% harmonic
notes(13,126) = g1;
notes(13,127) = g2;
notes(13,128) = g3;
notes(13,129) = g4;
notes(13,130) = g5;
notes(13,131) = g6;
notes(13,132) = g5;
notes(13,133) = g4;
notes(13,134) = g3;
notes(13,135) = g2;
notes(13,136) = g1;

% Do#2
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
% harmonic
notes(14,133) = g1;
notes(14,134) = g2;
notes(14,135) = g3;
notes(14,136) = g4;
notes(14,137) = g5;
notes(14,138) = g6;
notes(14,139) = g5;
notes(14,140) = g4;
notes(14,141) = g3;
notes(14,142) = g2;
notes(14,143) = g1;

% Re2
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
% harmonic
notes(15,142) = g1;
notes(15,143) = g2;
notes(15,144) = g3;
notes(15,145) = g4;
notes(15,146) = g5;
notes(15,147) = g6;
notes(15,148) = g5;
notes(15,149) = g4;
notes(15,150) = g3;
notes(15,151) = g2;
notes(15,152) = g1;

% Re#2
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
% harmonic
notes(16,140) = g1;
notes(16,141) = g2;
notes(16,152) = g3;
notes(16,153) = g4;
notes(16,154) = g5;
notes(16,155) = g6;
notes(16,156) = g5;
notes(16,157) = g4;
notes(16,158) = g3;
notes(16,159) = g2;
notes(16,160) = g1;

% Mi2
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
% harmonic
notes(17,160) = g1;
notes(17,161) = g2;
notes(17,162) = g3;
notes(17,163) = g4;
notes(17,164) = g5;
notes(17,165) = g6;
notes(17,166) = g5;
notes(17,167) = g4;
notes(17,168) = g3;
notes(17,169) = g2;
notes(17,170) = g1;

% Fa2
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
% harmonic
notes(18,170) = g1;
notes(18,171) = g2;
notes(18,172) = g3;
notes(18,173) = g4;
notes(18,174) = g5;
notes(18,175) = g6;
notes(18,176) = g5;
notes(18,177) = g4;
notes(18,178) = g3;
notes(18,189) = g2;
notes(18,190) = g1;

% Fa#2
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
% harmonic
notes(19,180) = g1;
notes(19,181) = g2;
notes(19,182) = g3;
notes(19,183) = g4;
notes(19,184) = g5;
notes(19,185) = g6;
notes(19,186) = g5;
notes(19,187) = g4;
notes(19,188) = g3;
notes(19,189) = g2;
notes(19,190) = g1;

% Sol2
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
% harmonic
notes(20,191) = g1;
notes(20,192) = g2;
notes(20,193) = g3;
notes(20,194) = g4;
notes(20,195) = g5;
notes(20,196) = g6;
notes(20,197) = g5;
notes(20,198) = g4;
notes(20,199) = g3;
notes(20,200) = g2;
notes(20,201) = g1;


% Sol#2
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
% harmonic
notes(21,203) = g1;
notes(21,204) = g2;
notes(21,205) = g3;
notes(21,206) = g4;
notes(21,207) = g5;
notes(21,208) = g6;
notes(21,209) = g5;
notes(21,210) = g4;
notes(21,211) = g3;
notes(21,212) = g2;
notes(21,213) = g1;

% La2
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
% harmonic
notes(22,215) = g1;
notes(22,216) = g2;
notes(22,217) = g3;
notes(22,218) = g4;
notes(22,219) = g5;
notes(22,220) = g6;
notes(22,221) = g5;
notes(22,222) = g4;
notes(22,223) = g3;
notes(22,224) = g2;
notes(22,225) = g1;

% La#2
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
% harmonic
notes(23,228) = g1;
notes(23,229) = g2;
notes(23,230) = g3;
notes(23,231) = g4;
notes(23,232) = g5;
notes(23,233) = g6;
notes(23,234) = g5;
notes(23,235) = g4;
notes(23,236) = g3;
notes(23,237) = g2;
notes(23,238) = g1;

% Si2
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
% harmonic
notes(24,242) = g1;
notes(24,243) = g2;
notes(24,244) = g3;
notes(24,245) = g4;
notes(24,246) = g5;
notes(24,247) = g6;
notes(24,248) = g5;
notes(24,249) = g4;
notes(24,250) = g3;
notes(24,251) = g2;
notes(24,252) = g1;


% octave 3
% Do3
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
% harmonic
notes(25,256) = g1;
notes(25,257) = g2;
notes(25,258) = g3;
notes(25,259) = g4;
notes(25,260) = g5;
notes(25,261) = g6;
notes(25,262) = g5;
notes(25,263) = g4;
notes(25,264) = g3;
notes(25,265) = g2;
notes(25,266) = g1;

% Do#3
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
% harmonic
notes(26,272) = g1;
notes(26,273) = g2;
notes(26,274) = g3;
notes(26,275) = g4;
notes(26,276) = g5;
notes(26,277) = g6;
notes(26,278) = g5;
notes(26,279) = g4;
notes(26,280) = g3;
notes(26,281) = g2;
notes(26,282) = g1;

% Re3
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
% harmonic
notes(27,289) = g1;
notes(27,290) = g2;
notes(27,291) = g3;
notes(27,292) = g4;
notes(27,293) = g5;
notes(27,294) = g6;
notes(27,295) = g5;
notes(27,296) = g4;
notes(27,297) = g3;
notes(27,298) = g2;
notes(27,299) = g1;

% Re#3
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
% harmonic
notes(28,306) = g1;
notes(28,307) = g2;
notes(28,308) = g3;
notes(28,309) = g4;
notes(28,310) = g5;
notes(28,311) = g6;
notes(28,312) = g5;
notes(28,313) = g4;
notes(28,314) = g3;
notes(28,315) = g2;
notes(28,316) = g1;

% Mi3
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
% harmonic
notes(29,325) = g1;
notes(29,326) = g2;
notes(29,327) = g3;
notes(29,328) = g4;
notes(29,329) = g5;
notes(29,330) = g6;
notes(29,331) = g5;
notes(29,332) = g4;
notes(29,333) = g3;
notes(29,334) = g2;
notes(29,335) = g1;

% Fa3
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
% harmonic
notes(30,344) = g1;
notes(30,345) = g2;
notes(30,346) = g3;
notes(30,347) = g4;
notes(30,348) = g5;
notes(30,349) = g6;
notes(30,350) = g5;
notes(30,351) = g4;
notes(30,352) = g3;
notes(30,353) = g2;
notes(30,354) = g1;


% Fa#3
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
% harmonic
notes(31,365) = g1;
notes(31,366) = g2;
notes(31,367) = g3;
notes(31,368) = g4;
notes(31,369) = g5;
notes(31,370) = g6;
notes(31,371) = g5;
notes(31,372) = g4;
notes(31,373) = g3;
notes(31,374) = g2;
notes(31,375) = g1;

% Sol3
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
% harmonic
notes(32,387) = g1;
notes(32,388) = g2;
notes(32,389) = g3;
notes(32,390) = g4;
notes(32,391) = g5;
notes(32,392) = g6;
notes(32,393) = g5;
notes(32,394) = g4;
notes(32,395) = g3;
notes(32,396) = g2;
notes(32,397) = g1;

% Sol#3
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
% harmonic
notes(33,410) = g1;
notes(33,411) = g2;
notes(33,412) = g3;
notes(33,413) = g4;
notes(33,414) = g5;
notes(33,415) = g6;
notes(33,416) = g5;
notes(33,417) = g4;
notes(33,418) = g3;
notes(33,419) = g2;
notes(33,420) = g1;

% La3
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
% harmonic
notes(34,435) = g1;
notes(34,436) = g2;
notes(34,437) = g3;
notes(34,438) = g4;
notes(34,439) = g5;
notes(34,440) = g6;
notes(34,441) = g5;
notes(34,442) = g4;
notes(34,443) = g3;
notes(34,444) = g2;
notes(34,445) = g1;


% La#3
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
% harmonic
notes(35,461) = g1;
notes(35,462) = g2;
notes(35,463) = g3;
notes(35,464) = g4;
notes(35,465) = g5;
notes(35,466) = g6;
notes(35,467) = g5;
notes(35,468) = g4;
notes(35,469) = g3;
notes(35,470) = g2;
notes(35,471) = g1;

% Si3
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
% harmonic
notes(36,489) = g1;
notes(36,490) = g2;
notes(36,491) = g3;
notes(36,492) = g4;
notes(36,493) = g5;
notes(36,494) = g6;
notes(36,495) = g5;
notes(36,496) = g4;
notes(36,497) = g3;
notes(36,498) = g2;
notes(36,499) = g1;


% octave 4
% Do4
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
% harmonic
notes(37,518) = g1;
notes(37,519) = g2;
notes(37,520) = g3;
notes(37,521) = g4;
notes(37,522) = g5;
notes(37,523) = g6;
notes(37,524) = g5;
notes(37,525) = g4;
notes(37,526) = g3;
notes(37,527) = g2;
notes(37,528) = g1;

% Do#4
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
% harmonic
notes(38,549) = g1;
notes(38,550) = g2;
notes(38,551) = g3;
notes(38,552) = g4;
notes(38,553) = g5;
notes(38,554) = g6;
notes(38,555) = g5;
notes(38,556) = g4;
notes(38,557) = g3;
notes(38,558) = g2;
notes(38,559) = g1;

% Re4
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
% harmonic
notes(39,582) = g1;
notes(39,583) = g2;
notes(39,584) = g3;
notes(39,585) = g4;
notes(39,586) = g5;
notes(39,587) = g6;
notes(39,588) = g5;
notes(39,589) = g4;
notes(39,590) = g3;
notes(39,591) = g2;
notes(39,592) = g1;

% Re#4
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
% harmonic
notes(40,617) = g1;
notes(40,618) = g2;
notes(40,619) = g3;
notes(40,620) = g4;
notes(40,621) = g5;
notes(40,622) = g6;
notes(40,623) = g5;
notes(40,624) = g4;
notes(40,625) = g3;
notes(40,626) = g2;
notes(40,627) = g1;


% Mi4
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
% harmonic
notes(41,655) = g1;
notes(41,656) = g2;
notes(41,657) = g3;
notes(41,658) = g4;
notes(41,659) = g5;
notes(41,660) = g6;
notes(41,661) = g5;
notes(41,662) = g4;
notes(41,663) = g3;
notes(41,664) = g2;
notes(41,665) = g1;


% Fa4
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
% harmonic
notes(42,693) = g1;
notes(42,694) = g2;
notes(42,695) = g3;
notes(42,696) = g4;
notes(42,697) = g5;
notes(42,698) = g6;
notes(42,699) = g5;
notes(42,700) = g4;
notes(42,701) = g3;
notes(42,702) = g2;
notes(42,703) = g1;

% Fa#4
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
% harmonic
notes(43,735) = g1;
notes(43,736) = g2;
notes(43,737) = g3;
notes(43,738) = g4;
notes(43,739) = g5;
notes(43,740) = g6;
notes(43,741) = g5;
notes(43,742) = g4;
notes(43,743) = g3;
notes(43,744) = g2;
notes(43,745) = g1;

% Sol4
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
% harmonic
notes(44,779) = g1;
notes(44,780) = g2;
notes(44,781) = g3;
notes(44,782) = g4;
notes(44,783) = g5;
notes(44,784) = g6;
notes(44,785) = g5;
notes(44,786) = g4;
notes(44,787) = g3;
notes(44,788) = g2;
notes(44,789) = g1;

% Sol#4
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
% harmonic
notes(45,825) = g1;
notes(45,826) = g2;
notes(45,827) = g3;
notes(45,828) = g4;
notes(45,829) = g5;
notes(45,830) = g6;
notes(45,831) = g5;
notes(45,832) = g4;
notes(45,833) = g3;
notes(45,834) = g2;
notes(45,835) = g1;

% La4
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
% harmonic
notes(46,875) = g1;
notes(46,876) = g2;
notes(46,877) = g3;
notes(46,878) = g4;
notes(46,879) = g5;
notes(46,880) = g6;
notes(46,881) = g5;
notes(46,882) = g4;
notes(46,883) = g3;
notes(46,884) = g2;
notes(46,885) = g1;

% La#4
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
% harmonic
notes(47,927) = g1;
notes(47,928) = g2;
notes(47,929) = g3;
notes(47,930) = g4;
notes(47,931) = g5;
notes(47,932) = g6;
notes(47,933) = g5;
notes(47,934) = g4;
notes(47,935) = g3;
notes(47,936) = g2;
notes(47,937) = g1;

% Si4
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
% harmonic
notes(48,983) = g1;
notes(48,984) = g2;
notes(48,985) = g3;
notes(48,986) = g4;
notes(48,987) = g5;
notes(48,988) = g6;
notes(48,989) = g5;
notes(48,990) = g4;
notes(48,991) = g3;
notes(48,992) = g2;
notes(48,993) = g1;

% octave 5
% Do5
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

% Do#5
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

% Re5
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

% Re#5
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

% Mi5
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

% Fa5
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

% Fa#5
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

% Sol5
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

% Sol#5
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

% La5
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

% La#5
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

% Si5
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


%-----------------------------------------
% build chords data base
chords(48, 60) = 0;


%-----------------------------------------

%CM
chords(1,1)=1;
chords(1,5)=1;
chords(1,8)=1;
chords(1,13)=1;
chords(1,17)=1;
chords(1,20)=1;
chords(1,25)=1;
chords(1,29)=1;
chords(1,32)=1;
chords(1,37)=1;
chords(1,41)=1;
chords(1,44)=1;
chords(1,49)=1;
chords(1,53)=1;
chords(1,56)=1;


%Cm
chords(2,1)=1;
chords(2,4)=1;
chords(2,8)=1;
chords(2,13)=1;
chords(2,16)=1;
chords(2,20)=1;
chords(2,25)=1;
chords(2,28)=1;
chords(2,32)=1;
chords(2,37)=1;
chords(2,40)=1;
chords(2,44)=1;
chords(2,49)=1;
chords(2,52)=1;
chords(2,56)=1;


%Caum
chords(3,1)=1;
chords(3,5)=1;
chords(3,9)=1;
chords(3,13)=1;
chords(3,17)=1;
chords(3,21)=1;
chords(3,25)=1;
chords(3,29)=1;
chords(3,33)=1;
chords(3,37)=1;
chords(3,41)=1;
chords(3,45)=1;
chords(3,49)=1;
chords(3,53)=1;
chords(3,57)=1;


%Cdim
chords(4,1)=1;
chords(4,4)=1;
chords(4,7)=1;
chords(4,13)=1;
chords(4,16)=1;
chords(4,19)=1;
chords(4,25)=1;
chords(4,28)=1;
chords(4,31)=1;
chords(4,37)=1;
chords(4,40)=1;
chords(4,43)=1;
chords(4,49)=1;
chords(4,52)=1;
chords(4,55)=1;


%-----------------------------------------

%C#M
chords(5,2)=1;
chords(5,6)=1;
chords(5,9)=1;
chords(5,14)=1;
chords(5,18)=1;
chords(5,21)=1;
chords(5,26)=1;
chords(5,30)=1;
chords(5,33)=1;
chords(5,38)=1;
chords(5,42)=1;
chords(5,45)=1;
chords(5,50)=1;
chords(5,54)=1;
chords(5,57)=1;


%C#m
chords(6,2)=1;
chords(6,5)=1;
chords(6,9)=1;
chords(6,14)=1;
chords(6,17)=1;
chords(6,21)=1;
chords(6,26)=1;
chords(6,29)=1;
chords(6,33)=1;
chords(6,38)=1;
chords(6,41)=1;
chords(6,45)=1;
chords(6,50)=1;
chords(6,53)=1;
chords(6,57)=1;


%C#aum
chords(7,2)=1;
chords(7,6)=1;
chords(7,10)=1;
chords(7,14)=1;
chords(7,18)=1;
chords(7,22)=1;
chords(7,26)=1;
chords(7,30)=1;
chords(7,34)=1;
chords(7,38)=1;
chords(7,42)=1;
chords(7,46)=1;
chords(7,50)=1;
chords(7,54)=1;
chords(7,58)=1;


%C#dim
chords(8,2)=1;
chords(8,5)=1;
chords(8,8)=1;
chords(8,14)=1;
chords(8,17)=1;
chords(8,20)=1;
chords(8,26)=1;
chords(8,29)=1;
chords(8,32)=1;
chords(8,38)=1;
chords(8,41)=1;
chords(8,44)=1;
chords(8,50)=1;
chords(8,53)=1;
chords(8,56)=1;


%-----------------------------------------

%DM
chords(9,3)=1;
chords(9,7)=1;
chords(9,10)=1;
chords(9,15)=1;
chords(9,19)=1;
chords(9,22)=1;
chords(9,27)=1;
chords(9,31)=1;
chords(9,34)=1;
chords(9,39)=1;
chords(9,43)=1;
chords(9,46)=1;
chords(9,51)=1;
chords(9,55)=1;
chords(9,58)=1;


%Dm
chords(10,3)=1;
chords(10,6)=1;
chords(10,10)=1;
chords(10,15)=1;
chords(10,18)=1;
chords(10,22)=1;
chords(10,27)=1;
chords(10,30)=1;
chords(10,34)=1;
chords(10,39)=1;
chords(10,42)=1;
chords(10,46)=1;
chords(10,51)=1;
chords(10,54)=1;
chords(10,58)=1;


%Daum
chords(11,3)=1;
chords(11,7)=1;
chords(11,11)=1;
chords(11,15)=1;
chords(11,19)=1;
chords(11,23)=1;
chords(11,27)=1;
chords(11,31)=1;
chords(11,35)=1;
chords(11,39)=1;
chords(11,43)=1;
chords(11,47)=1;
chords(11,51)=1;
chords(11,55)=1;
chords(11,59)=1;


%Ddim
chords(12,3)=1;
chords(12,6)=1;
chords(12,9)=1;
chords(12,15)=1;
chords(12,18)=1;
chords(12,21)=1;
chords(12,27)=1;
chords(12,30)=1;
chords(12,33)=1;
chords(12,39)=1;
chords(12,42)=1;
chords(12,45)=1;
chords(12,51)=1;
chords(12,54)=1;
chords(12,57)=1;


%-----------------------------------------

%D#M
chords(13,4)=1;
chords(13,8)=1;
chords(13,11)=1;
chords(13,16)=1;
chords(13,20)=1;
chords(13,23)=1;
chords(13,28)=1;
chords(13,32)=1;
chords(13,35)=1;
chords(13,40)=1;
chords(13,44)=1;
chords(13,47)=1;
chords(13,52)=1;
chords(13,56)=1;
chords(13,59)=1;


%D#m
chords(14,4)=1;
chords(14,7)=1;
chords(14,11)=1;
chords(14,16)=1;
chords(14,19)=1;
chords(14,23)=1;
chords(14,28)=1;
chords(14,31)=1;
chords(14,35)=1;
chords(14,40)=1;
chords(14,43)=1;
chords(14,47)=1;
chords(14,52)=1;
chords(14,55)=1;
chords(14,59)=1;


%D#aum
chords(15,4)=1;
chords(15,8)=1;
chords(15,12)=1;
chords(15,16)=1;
chords(15,20)=1;
chords(15,24)=1;
chords(15,28)=1;
chords(15,32)=1;
chords(15,36)=1;
chords(15,40)=1;
chords(15,44)=1;
chords(15,48)=1;
chords(15,52)=1;
chords(15,56)=1;
chords(15,60)=1;


%D#dim
chords(16,4)=1;
chords(16,7)=1;
chords(16,10)=1;
chords(16,16)=1;
chords(16,19)=1;
chords(16,22)=1;
chords(16,28)=1;
chords(16,31)=1;
chords(16,34)=1;
chords(16,40)=1;
chords(16,43)=1;
chords(16,46)=1;
chords(16,52)=1;
chords(16,55)=1;
chords(16,58)=1;


%-----------------------------------------

%EM
chords(17,5)=1;
chords(17,9)=1;
chords(17,12)=1;
chords(17,17)=1;
chords(17,21)=1;
chords(17,24)=1;
chords(17,29)=1;
chords(17,33)=1;
chords(17,36)=1;
chords(17,41)=1;
chords(17,45)=1;
chords(17,48)=1;
chords(17,53)=1;
chords(17,57)=1;
chords(17,60)=1;


%Em
chords(18,5)=1;
chords(18,8)=1;
chords(18,12)=1;
chords(18,17)=1;
chords(18,20)=1;
chords(18,24)=1;
chords(18,29)=1;
chords(18,32)=1;
chords(18,36)=1;
chords(18,41)=1;
chords(18,44)=1;
chords(18,48)=1;
chords(18,53)=1;
chords(18,56)=1;
chords(18,60)=1;


%Eaum
chords(19,5)=1;
chords(19,9)=1;
chords(19,13)=1;
chords(19,17)=1;
chords(19,21)=1;
chords(19,25)=1;
chords(19,29)=1;
chords(19,33)=1;
chords(19,37)=1;
chords(19,41)=1;
chords(19,45)=1;
chords(19,49)=1;
chords(19,53)=1;
chords(19,57)=1;


%Edim
chords(20,5)=1;
chords(20,8)=1;
chords(20,11)=1;
chords(20,17)=1;
chords(20,20)=1;
chords(20,23)=1;
chords(20,29)=1;
chords(20,32)=1;
chords(20,35)=1;
chords(20,41)=1;
chords(20,44)=1;
chords(20,47)=1;
chords(20,53)=1;
chords(20,56)=1;
chords(20,59)=1;


%-----------------------------------------

%FM
chords(21,6)=1;
chords(21,10)=1;
chords(21,13)=1;
chords(21,18)=1;
chords(21,22)=1;
chords(21,25)=1;
chords(21,30)=1;
chords(21,34)=1;
chords(21,37)=1;
chords(21,42)=1;
chords(21,46)=1;
chords(21,49)=1;
chords(21,54)=1;
chords(21,58)=1;


%Fm
chords(22,6)=1;
chords(22,9)=1;
chords(22,13)=1;
chords(22,18)=1;
chords(22,21)=1;
chords(22,25)=1;
chords(22,30)=1;
chords(22,33)=1;
chords(22,37)=1;
chords(22,42)=1;
chords(22,45)=1;
chords(22,49)=1;
chords(22,54)=1;
chords(22,57)=1;


%Faum
chords(23,6)=1;
chords(23,10)=1;
chords(23,14)=1;
chords(23,18)=1;
chords(23,22)=1;
chords(23,26)=1;
chords(23,30)=1;
chords(23,34)=1;
chords(23,38)=1;
chords(23,42)=1;
chords(23,46)=1;
chords(23,50)=1;
chords(23,54)=1;
chords(23,58)=1;


%Fdim
chords(24,6)=1;
chords(24,9)=1;
chords(24,12)=1;
chords(24,18)=1;
chords(24,21)=1;
chords(24,24)=1;
chords(24,30)=1;
chords(24,33)=1;
chords(24,36)=1;
chords(24,42)=1;
chords(24,45)=1;
chords(24,48)=1;
chords(24,54)=1;
chords(24,57)=1;
chords(24,60)=1;


%-----------------------------------------

%F#M
chords(25,7)=1;
chords(25,11)=1;
chords(25,14)=1;
chords(25,19)=1;
chords(25,23)=1;
chords(25,26)=1;
chords(25,31)=1;
chords(25,35)=1;
chords(25,38)=1;
chords(25,43)=1;
chords(25,47)=1;
chords(25,50)=1;
chords(25,55)=1;
chords(25,59)=1;


%F#m
chords(26,7)=1;
chords(26,10)=1;
chords(26,14)=1;
chords(26,19)=1;
chords(26,22)=1;
chords(26,26)=1;
chords(26,31)=1;
chords(26,34)=1;
chords(26,38)=1;
chords(26,43)=1;
chords(26,46)=1;
chords(26,50)=1;
chords(26,55)=1;
chords(26,58)=1;


%F#aum
chords(27,7)=1;
chords(27,11)=1;
chords(27,15)=1;
chords(27,19)=1;
chords(27,23)=1;
chords(27,27)=1;
chords(27,31)=1;
chords(27,35)=1;
chords(27,39)=1;
chords(27,43)=1;
chords(27,47)=1;
chords(27,51)=1;
chords(27,55)=1;
chords(27,59)=1;


%F#dim
chords(28,7)=1;
chords(28,10)=1;
chords(28,13)=1;
chords(28,19)=1;
chords(28,22)=1;
chords(28,25)=1;
chords(28,31)=1;
chords(28,34)=1;
chords(28,37)=1;
chords(28,43)=1;
chords(28,46)=1;
chords(28,49)=1;
chords(28,55)=1;
chords(28,58)=1;


%-----------------------------------------

%GM
chords(29,8)=1;
chords(29,12)=1;
chords(29,15)=1;
chords(29,20)=1;
chords(29,24)=1;
chords(29,27)=1;
chords(29,32)=1;
chords(29,36)=1;
chords(29,39)=1;
chords(29,44)=1;
chords(29,48)=1;
chords(29,51)=1;
chords(29,56)=1;
chords(29,60)=1;


%Gm
chords(30,8)=1;
chords(30,11)=1;
chords(30,15)=1;
chords(30,20)=1;
chords(30,23)=1;
chords(30,27)=1;
chords(30,32)=1;
chords(30,35)=1;
chords(30,39)=1;
chords(30,44)=1;
chords(30,47)=1;
chords(30,51)=1;
chords(30,56)=1;
chords(30,59)=1;


%Gaum
chords(31,8)=1;
chords(31,12)=1;
chords(31,16)=1;
chords(31,20)=1;
chords(31,24)=1;
chords(31,28)=1;
chords(31,32)=1;
chords(31,36)=1;
chords(31,40)=1;
chords(31,44)=1;
chords(31,48)=1;
chords(31,52)=1;
chords(31,56)=1;
chords(31,60)=1;


%Gdim
chords(32,8)=1;
chords(32,11)=1;
chords(32,14)=1;
chords(32,20)=1;
chords(32,23)=1;
chords(32,26)=1;
chords(32,32)=1;
chords(32,35)=1;
chords(32,38)=1;
chords(32,44)=1;
chords(32,47)=1;
chords(32,50)=1;
chords(32,56)=1;
chords(32,59)=1;


%-----------------------------------------

%G#M
chords(33,9)=1;
chords(33,13)=1;
chords(33,16)=1;
chords(33,21)=1;
chords(33,25)=1;
chords(33,28)=1;
chords(33,33)=1;
chords(33,37)=1;
chords(33,40)=1;
chords(33,45)=1;
chords(33,49)=1;
chords(33,52)=1;
chords(33,57)=1;


%G#m
chords(34,9)=1;
chords(34,12)=1;
chords(34,16)=1;
chords(34,21)=1;
chords(34,24)=1;
chords(34,28)=1;
chords(34,33)=1;
chords(34,36)=1;
chords(34,40)=1;
chords(34,45)=1;
chords(34,48)=1;
chords(34,52)=1;
chords(34,57)=1;
chords(34,60)=1;


%G#aum
chords(35,9)=1;
chords(35,13)=1;
chords(35,17)=1;
chords(35,21)=1;
chords(35,25)=1;
chords(35,29)=1;
chords(35,33)=1;
chords(35,37)=1;
chords(35,41)=1;
chords(35,45)=1;
chords(35,49)=1;
chords(35,53)=1;
chords(35,57)=1;


%G#dim
chords(36,9)=1;
chords(36,12)=1;
chords(36,15)=1;
chords(36,21)=1;
chords(36,24)=1;
chords(36,27)=1;
chords(36,33)=1;
chords(36,36)=1;
chords(36,39)=1;
chords(36,45)=1;
chords(36,48)=1;
chords(36,51)=1;
chords(36,57)=1;
chords(36,60)=1;


%-----------------------------------------

%AM
chords(37,10)=1;
chords(37,14)=1;
chords(37,17)=1;
chords(37,22)=1;
chords(37,26)=1;
chords(37,29)=1;
chords(37,34)=1;
chords(37,38)=1;
chords(37,41)=1;
chords(37,46)=1;
chords(37,50)=1;
chords(37,53)=1;
chords(37,58)=1;


%Am
chords(38,10)=1;
chords(38,13)=1;
chords(38,17)=1;
chords(38,22)=1;
chords(38,25)=1;
chords(38,29)=1;
chords(38,34)=1;
chords(38,37)=1;
chords(38,41)=1;
chords(38,46)=1;
chords(38,49)=1;
chords(38,53)=1;
chords(38,58)=1;


%Aaum
chords(39,10)=1;
chords(39,14)=1;
chords(39,18)=1;
chords(39,22)=1;
chords(39,26)=1;
chords(39,30)=1;
chords(39,34)=1;
chords(39,38)=1;
chords(39,42)=1;
chords(39,46)=1;
chords(39,50)=1;
chords(39,54)=1;
chords(39,58)=1;


%Adim
chords(40,10)=1;
chords(40,13)=1;
chords(40,16)=1;
chords(40,22)=1;
chords(40,25)=1;
chords(40,28)=1;
chords(40,34)=1;
chords(40,37)=1;
chords(40,40)=1;
chords(40,46)=1;
chords(40,49)=1;
chords(40,52)=1;
chords(40,58)=1;


%-----------------------------------------

%A#M
chords(41,11)=1;
chords(41,15)=1;
chords(41,18)=1;
chords(41,23)=1;
chords(41,27)=1;
chords(41,30)=1;
chords(41,35)=1;
chords(41,39)=1;
chords(41,42)=1;
chords(41,47)=1;
chords(41,51)=1;
chords(41,54)=1;
chords(41,59)=1;


%A#m
chords(42,11)=1;
chords(42,14)=1;
chords(42,18)=1;
chords(42,23)=1;
chords(42,26)=1;
chords(42,30)=1;
chords(42,35)=1;
chords(42,38)=1;
chords(42,42)=1;
chords(42,47)=1;
chords(42,50)=1;
chords(42,54)=1;
chords(42,59)=1;


%A#aum
chords(43,11)=1;
chords(43,15)=1;
chords(43,19)=1;
chords(43,23)=1;
chords(43,27)=1;
chords(43,31)=1;
chords(43,35)=1;
chords(43,39)=1;
chords(43,43)=1;
chords(43,47)=1;
chords(43,51)=1;
chords(43,55)=1;
chords(43,59)=1;


%A#dim
chords(44,11)=1;
chords(44,14)=1;
chords(44,17)=1;
chords(44,23)=1;
chords(44,26)=1;
chords(44,29)=1;
chords(44,35)=1;
chords(44,38)=1;
chords(44,41)=1;
chords(44,47)=1;
chords(44,50)=1;
chords(44,53)=1;
chords(44,59)=1;


%-----------------------------------------

%BM
chords(45,12)=1;
chords(45,16)=1;
chords(45,19)=1;
chords(45,24)=1;
chords(45,28)=1;
chords(45,31)=1;
chords(45,36)=1;
chords(45,40)=1;
chords(45,43)=1;
chords(45,48)=1;
chords(45,52)=1;
chords(45,55)=1;
chords(45,60)=1;


%Bm
chords(46,12)=1;
chords(46,15)=1;
chords(46,19)=1;
chords(46,24)=1;
chords(46,27)=1;
chords(46,31)=1;
chords(46,36)=1;
chords(46,39)=1;
chords(46,43)=1;
chords(46,48)=1;
chords(46,51)=1;
chords(46,55)=1;
chords(46,60)=1;


%Baum
chords(47,12)=1;
chords(47,16)=1;
chords(47,20)=1;
chords(47,24)=1;
chords(47,28)=1;
chords(47,32)=1;
chords(47,36)=1;
chords(47,40)=1;
chords(47,44)=1;
chords(47,48)=1;
chords(47,52)=1;
chords(47,56)=1;
chords(47,60)=1;


%Bdim
chords(48,12)=1;
chords(48,15)=1;
chords(48,18)=1;
chords(48,24)=1;
chords(48,27)=1;
chords(48,30)=1;
chords(48,36)=1;
chords(48,39)=1;
chords(48,42)=1;
chords(48,48)=1;
chords(48,51)=1;
chords(48,54)=1;
chords(48,60)=1;


% begin to analyse music
time_seconds_total = fix(length(signal)/fs);
notes_time(time_seconds_total, 60) = 0;
chords_time(time_seconds_total) = 0;
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

    % get energy of chords
    energy_chords(1:48) = 0;
    for chord = 1:48
        energy_chords(chord) = sum(notes_time(time, :).*chords(chord,:));
    end

    chords_time(time) = find(energy_chords==max(energy_chords));
end