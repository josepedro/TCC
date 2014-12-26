function DA2 = DA2(som)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                         DA2.m (Detector de Acordes 2)
%       
%   Autor: Jos� Pedro de Santana Neto
%   Matricula: 09/0119355
% 
% Entrada:
%   som: Sinal de audio
%   
% Sa�da:
%   resultado: Acorde tocado
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tic; %iniciar contagem de tempo

%====================================
% M E M O R I A 


%--------------------------
%NOTAS

notas(12,22050) = 0; %matriz das notas

%Combina��es de D�

notas(1,61) = 0.1;
notas(1,62) = 0.2;
notas(1,63) = 0.4;
notas(1,64) = 0.6;
notas(1,65) = 0.8;
notas(1,66) = 1; %D� mais grave
notas(1,67) = 0.8;
notas(1,68) = 0.6;
notas(1,69) = 0.4;
notas(1,70) = 0.2;
notas(1,71) = 0.1;

notas(1,127) = 0.1;
notas(1,128) = 0.2;
notas(1,129) = 0.4;
notas(1,130) = 0.6;
notas(1,131) = 0.8;
notas(1,132) = 1; %D� mais ou menos grave
notas(1,131) = 0.8;
notas(1,130) = 0.6;
notas(1,129) = 0.4;
notas(1,128) = 0.2;
notas(1,127) = 0.1;

notas(1,262) = 0.1; 
notas(1,263) = 0.2; 
notas(1,264) = 0.4; 
notas(1,262) = 0.6; 
notas(1,263) = 0.8; 
notas(1,264) = 1; %D� central
notas(1,265) = 0.8; 
notas(1,266) = 0.6;
notas(1,267) = 0.4;
notas(1,268) = 0.2;
notas(1,269) = 0.1;

notas(1,523) = 0.1;
notas(1,524) = 0.2;
notas(1,525) = 0.4;
notas(1,526) = 0.6;
notas(1,527) = 0.8;
notas(1,528) = 1; %D� mais ou menos agudo
notas(1,529) = 0.8;
notas(1,530) = 0.6;
notas(1,531) = 0.4;
notas(1,532) = 0.2;
notas(1,533) = 0.1;

notas(1,1051) = 0.1;
notas(1,1052) = 0.2;
notas(1,1053) = 0.4;
notas(1,1054) = 0.6;
notas(1,1055) = 0.8;
notas(1,1056) = 1; %D� mais agudo
notas(1,1057) = 0.8;
notas(1,1058) = 0.6;
notas(1,1059) = 0.4;
notas(1,1060) = 0.2;
notas(1,1061) = 0.1;

%Combina��es de D�#

notas(2,63) = 0.1;
notas(2,64) = 0.2;
notas(2,65) = 0.4;
notas(2,66) = 0.6;
notas(2,67) = 0.8;
notas(2,68) = 1; %D� mais grave
notas(2,69) = 0.8;
notas(2,70) = 0.6;
notas(2,71) = 0.4;
notas(2,72) = 0.2;
notas(2,73) = 0.1;

notas(2,132) = 0.1;
notas(2,133) = 0.2;
notas(2,134) = 0.4;
notas(2,135) = 0.6;
notas(2,136) = 0.8;
notas(2,137) = 1; %D�# mais ou menos grave
notas(2,138) = 0.8;
notas(2,139) = 0.6;
notas(2,140) = 0.4;
notas(2,141) = 0.2;
notas(2,142) = 0.1;

notas(2,270) = 0.1;
notas(2,271) = 0.2;
notas(2,272) = 0.4;
notas(2,273) = 0.6;
notas(2,274) = 0.8;
notas(2,275) = 1; %D�# central
notas(2,276) = 0.8;
notas(2,277) = 0.6;
notas(2,278) = 0.4;
notas(2,279) = 0.2;
notas(2,280) = 0.1;

notas(2,545) = 0.1;
notas(2,546) = 0.2;
notas(2,547) = 0.4;
notas(2,548) = 0.6;
notas(2,549) = 0.8;
notas(2,550) = 1; %D�# mais ou menos agudo
notas(2,551) = 0.8;
notas(2,552) = 0.6;
notas(2,553) = 0.4;
notas(2,554) = 0.2;
notas(2,555) = 0.1;

notas(2,1095) = 0.1;
notas(2,1096) = 0.2;
notas(2,1097) = 0.4;
notas(2,1098) = 0.6;
notas(2,1099) = 0.8;
notas(2,1100) = 1; %D�# mais agudo
notas(2,1101) = 0.8;
notas(2,1102) = 0.6;
notas(2,1103) = 0.4;
notas(2,1104) = 0.2;
notas(2,1105) = 0.1;

%Combina��es de R�

notas(3,69) = 0.1;
notas(3,70) = 0.2;
notas(3,71) = 0.4;
notas(3,72) = 0.6;
notas(3,73) = 0.8;
notas(3,74) = 1; %R� mais grave
notas(3,75) = 0.8;
notas(3,76) = 0.6;
notas(3,77) = 0.4;
notas(3,78) = 0.2;
notas(3,79) = 0.1;

notas(3,144) = 0.1;
notas(3,145) = 0.2;
notas(3,146) = 0.4;
notas(3,147) = 0.6;
notas(3,148) = 0.8;
notas(3,149) = 1; %R� mais ou menos grave
notas(3,150) = 0.8;
notas(3,151) = 0.6;
notas(3,152) = 0.4;
notas(3,153) = 0.2;
notas(3,154) = 0.1;

notas(3,292) = 0.1;
notas(3,293) = 0.2;
notas(3,294) = 0.4;
notas(3,295) = 0.6;
notas(3,296) = 0.8;
notas(3,297) = 1; %R� central
notas(3,298) = 0.8;
notas(3,299) = 0.6;
notas(3,300) = 0.4;
notas(3,301) = 0.2;
notas(3,302) = 0.1;

notas(3,589) = 0.1;
notas(3,590) = 0.2;
notas(3,591) = 0.4;
notas(3,592) = 0.6;
notas(3,593) = 0.8;
notas(3,594) = 1; %R� mais ou menos agudo
notas(3,595) = 0.8;
notas(3,596) = 0.6;
notas(3,597) = 0.4;
notas(3,598) = 0.2;
notas(3,599) = 0.1;

notas(3,1183) = 0.1;
notas(3,1184) = 0.2;
notas(3,1185) = 0.4;
notas(3,1186) = 0.6;
notas(3,1187) = 0.8;
notas(3,1188) = 1; %R� mais agudo
notas(3,1189) = 0.8;
notas(3,1190) = 0.6;
notas(3,1191) = 0.4;
notas(3,1192) = 0.2;
notas(3,1193) = 0.1;

%Combina��es de R�#

notas(4,71) = 0.1;
notas(4,72) = 0.2;
notas(4,73) = 0.4;
notas(4,74) = 0.6;
notas(4,75) = 0.8;
notas(4,76) = 1; %R�# mais grave 
notas(4,77) = 0.8;
notas(4,78) = 0.6;
notas(4,79) = 0.4;
notas(4,80) = 0.2;
notas(4,81) = 0.1;

notas(4,148) = 0.1;
notas(4,149) = 0.2;
notas(4,150) = 0.4;
notas(4,151) = 0.6;
notas(4,152) = 0.8;
notas(4,153) = 1; %R�# mais ou menos grave
notas(4,154) = 0.8;
notas(4,155) = 0.6;
notas(4,156) = 0.4;
notas(4,157) = 0.2;
notas(4,158) = 0.1;

notas(4,301) = 0.1;
notas(4,302) = 0.2;
notas(4,303) = 0.4;
notas(4,304) = 0.6;
notas(4,305) = 0.8;
notas(4,306) = 1; %R�# central
notas(4,307) = 0.8;
notas(4,308) = 0.6;
notas(4,309) = 0.4;
notas(4,310) = 0.2;
notas(4,311) = 0.1;

notas(4,607) = 0.1;
notas(4,608) = 0.2;
notas(4,609) = 0.4;
notas(4,610) = 0.6;
notas(4,611) = 0.8;
notas(4,612) = 1; %R�# mais ou menos agudo
notas(4,613) = 0.8;
notas(4,614) = 0.6;
notas(4,615) = 0.4;
notas(4,616) = 0.2;
notas(4,617) = 0.1;

notas(4,1219) = 0.1;
notas(4,1220) = 0.2;
notas(4,1221) = 0.4;
notas(4,1222) = 0.6;
notas(4,1223) = 0.8;
notas(4,1224) = 1; %R�# mais agudo
notas(4,1225) = 0.8;
notas(4,1226) = 0.6;
notas(4,1227) = 0.4;
notas(4,1228) = 0.2;
notas(4,1229) = 0.1;

%Combina��es de MI

notas(5,77) = 0.1;
notas(5,78) = 0.2;
notas(5,79) = 0.4;
notas(5,81) = 0.6;
notas(5,82) = 0.8;
notas(5,83) = 1; %MI mais grave
notas(5,84) = 0.8;
notas(5,85) = 0.6;
notas(5,86) = 0.4;
notas(5,87) = 0.2;
notas(5,88) = 0.1;

notas(5,160) = 0.1;
notas(5,161) = 0.2;
notas(5,162) = 0.4;
notas(5,163) = 0.6;
notas(5,164) = 0.8;
notas(5,165) = 1; %MI mais ou menos grave
notas(5,166) = 0.8;
notas(5,167) = 0.6;
notas(5,168) = 0.4;
notas(5,169) = 0.2;
notas(5,170) = 0.1;

notas(5,325) = 0.1;
notas(5,326) = 0.2;
notas(5,327) = 0.4;
notas(5,328) = 0.6;
notas(5,329) = 0.8;
notas(5,330) = 1; %MI central
notas(5,331) = 0.8;
notas(5,332) = 0.6;
notas(5,333) = 0.4;
notas(5,334) = 0.2;
notas(5,335) = 0.1;

notas(5,655) = 0.1;
notas(5,656) = 0.2;
notas(5,657) = 0.4;
notas(5,658) = 0.6;
notas(5,659) = 0.8;
notas(5,660) = 1; %MI mais ou menos agudo
notas(5,661) = 0.8;
notas(5,662) = 0.6;
notas(5,663) = 0.4;
notas(5,664) = 0.2;
notas(5,665) = 0.1;

notas(5,1315) = 0.1;
notas(5,1316) = 0.2;
notas(5,1317) = 0.4;
notas(5,1318) = 0.6;
notas(5,1319) = 0.8;
notas(5,1320) = 1; %MI mais agudo
notas(5,1321) = 0.8;
notas(5,1322) = 0.6;
notas(5,1323) = 0.4;
notas(5,1324) = 0.2;
notas(5,1325) = 0.1;

%Combina��es de FA

notas(6,83) = 0.1;
notas(6,84) = 0.2;
notas(6,85) = 0.4;
notas(6,86) = 0.6;
notas(6,87) = 0.8;
notas(6,88) = 1; %FA mais grave
notas(6,89) = 0.8;
notas(6,90) = 0.6;
notas(6,91) = 0.4;
notas(6,92) = 0.2;
notas(6,93) = 0.1;

notas(6,171) = 0.1;
notas(6,172) = 0.2;
notas(6,173) = 0.4;
notas(6,174) = 0.6;
notas(6,175) = 0.8;
notas(6,176) = 1; %FA mais ou menos grave
notas(6,177) = 0.8;
notas(6,178) = 0.6;
notas(6,179) = 0.4;
notas(6,180) = 0.2;
notas(6,181) = 0.1;

notas(6,347) = 0.1;
notas(6,348) = 0.2;
notas(6,349) = 0.4;
notas(6,350) = 0.6;
notas(6,351) = 0.8;
notas(6,352) = 1; %FA central
notas(6,353) = 0.8;
notas(6,354) = 0.6;
notas(6,355) = 0.4;
notas(6,356) = 0.2;
notas(6,357) = 0.1;

notas(6,699) = 0.1;
notas(6,700) = 0.2;
notas(6,701) = 0.4;
notas(6,702) = 0.6;
notas(6,703) = 0.8;
notas(6,704) = 1; %FA mais ou menos agudo
notas(6,705) = 0.8;
notas(6,706) = 0.6;
notas(6,707) = 0.4;
notas(6,708) = 0.2;
notas(6,709) = 0.1;

notas(6,1403) = 0.1;
notas(6,1404) = 0.2;
notas(6,1405) = 0.4;
notas(6,1406) = 0.6;
notas(6,1407) = 0.8;
notas(6,1408) = 1; %FA mais agudo
notas(6,1409) = 0.8;
notas(6,1410) = 0.6;
notas(6,1411) = 0.4;
notas(6,1412) = 0.2;
notas(6,1413) = 0.1;

%Combina��es de F�#

notas(7,87) = 0.1;
notas(7,88) = 0.2;
notas(7,89) = 0.4;
notas(7,90) = 0.6;
notas(7,91) = 0.8;
notas(7,92) = 1; %F�# mais grave
notas(7,93) = 0.8;
notas(7,94) = 0.6;
notas(7,95) = 0.4;
notas(7,96) = 0.2;
notas(7,97) = 0.1;

notas(7,180) = 0.1;
notas(7,181) = 0.2;
notas(7,182) = 0.4;
notas(7,183) = 0.6;
notas(7,184) = 0.8;
notas(7,185) = 1; %F�# mais ou menos grave
notas(7,186) = 0.8;
notas(7,187) = 0.6;
notas(7,188) = 0.4;
notas(7,189) = 0.2;
notas(7,190) = 0.1;

notas(7,366) = 0.1;
notas(7,367) = 0.2;
notas(7,368) = 0.4;
notas(7,369) = 0.6;
notas(7,370) = 0.8;
notas(7,371) = 1; %F�# central
notas(7,372) = 0.8;
notas(7,373) = 0.6;
notas(7,374) = 0.4;
notas(7,375) = 0.2;
notas(7,376) = 0.1;

notas(7,737) = 0.1;
notas(7,738) = 0.2;
notas(7,739) = 0.4;
notas(7,740) = 0.6;
notas(7,741) = 0.8;
notas(7,742) = 1; %F�# mais ou menos agudo
notas(7,743) = 0.8;
notas(7,744) = 0.6;
notas(7,745) = 0.4;
notas(7,746) = 0.2;
notas(7,747) = 0.1;

notas(7,1479) = 0.1;
notas(7,1480) = 0.2;
notas(7,1481) = 0.4;
notas(7,1482) = 0.6;
notas(7,1483) = 0.8;
notas(7,1484) = 1; %F�# mais agudo
notas(7,1485) = 0.8;
notas(7,1486) = 0.6;
notas(7,1487) = 0.4;
notas(7,1488) = 0.2;
notas(7,1489) = 0.1;

%Combina��es de SOL

notas(8,94) = 0.1;
notas(8,95) = 0.2;
notas(8,96) = 0.4;
notas(8,97) = 0.6;
notas(8,98) = 0.8;
notas(8,99) = 1; %SOL mais grave
notas(8,100) = 0.8;
notas(8,101) = 0.6;
notas(8,102) = 0.4;
notas(8,103) = 0.2;
notas(8,104) = 0.1;

notas(8,193) = 0.1;
notas(8,194) = 0.2;
notas(8,195) = 0.4;
notas(8,196) = 0.6;
notas(8,197) = 0.8;
notas(8,198) = 1; %SOL mais ou menos grave
notas(8,199) = 0.8;
notas(8,200) = 0.6;
notas(8,201) = 0.4;
notas(8,202) = 0.2;
notas(8,203) = 0.1;

notas(8,391) = 0.1;
notas(8,392) = 0.2;
notas(8,393) = 0.4;
notas(8,394) = 0.6;
notas(8,395) = 0.8;
notas(8,396) = 1; %SOL central
notas(8,397) = 0.8;
notas(8,398) = 0.6;
notas(8,399) = 0.4;
notas(8,400) = 0.2;
notas(8,401) = 0.1;

notas(8,94) = 0.1;
notas(8,95) = 0.2;
notas(8,96) = 0.4;
notas(8,97) = 0.6;
notas(8,98) = 0.8;
notas(8,792) = 1; %SOL mais ou menos agudo
notas(8,793) = 0.8;
notas(8,794) = 0.6;
notas(8,795) = 0.4;
notas(8,796) = 0.2;
notas(8,797) = 0.1;

notas(8,1579) = 0.1;
notas(8,1580) = 0.2;
notas(8,1581) = 0.4;
notas(8,1582) = 0.6;
notas(8,1583) = 0.8;
notas(8,1584) = 1; %SOL mais agudo
notas(8,1585) = 0.8;
notas(8,1586) = 0.6;
notas(8,1587) = 0.4;
notas(8,1588) = 0.2;
notas(8,1589) = 0.1;

%Combina��es de SOL#

notas(9,98) = 0.1;
notas(9,99) = 0.2;
notas(9,100) = 0.4;
notas(9,101) = 0.6;
notas(9,102) = 0.8;
notas(9,103) = 1; %SOL# mais grave
notas(9,104) = 0.8;
notas(9,105) = 0.6;
notas(9,106) = 0.4;
notas(9,107) = 0.2;
notas(9,108) = 0.1;

notas(9,201) = 0.1;
notas(9,202) = 0.2;
notas(9,203) = 0.4;
notas(9,204) = 0.6;
notas(9,205) = 0.8;
notas(9,206) = 1; %SOL# mais ou menos grave
notas(9,207) = 0.8;
notas(9,208) = 0.6;
notas(9,209) = 0.4;
notas(9,210) = 0.2;
notas(9,211) = 0.1;

notas(9,407) = 0.1;
notas(9,408) = 0.2;
notas(9,409) = 0.4;
notas(9,410) = 0.6;
notas(9,411) = 0.8;
notas(9,412) = 1; %SOL# central
notas(9,413) = 0.8;
notas(9,414) = 0.6;
notas(9,415) = 0.4;
notas(9,416) = 0.2;
notas(9,417) = 0.1;

notas(9,819) = 0.1;
notas(9,820) = 0.2;
notas(9,821) = 0.4;
notas(9,822) = 0.6;
notas(9,823) = 0.8;
notas(9,824) = 1; %SOL# mais ou menos agudo
notas(9,825) = 0.8;
notas(9,826) = 0.6;
notas(9,827) = 0.4;
notas(9,828) = 0.2;
notas(9,829) = 0.1;

notas(9,1643) = 0.1;
notas(9,1644) = 0.2;
notas(9,1645) = 0.4;
notas(9,1646) = 0.6;
notas(9,1647) = 0.8;
notas(9,1648) = 1; %SOL# mais agudo
notas(9,1649) = 0.8;
notas(9,1650) = 0.6;
notas(9,1651) = 0.4;
notas(9,1652) = 0.2;
notas(9,1653) = 0.1;

%Combina��es de L�

notas(10,105) = 0.1;
notas(10,106) = 0.2;
notas(10,107) = 0.4;
notas(10,108) = 0.6;
notas(10,109) = 0.8;
notas(10,110) = 1; %LA mais grave
notas(10,111) = 0.8;
notas(10,112) = 0.6;
notas(10,113) = 0.4;
notas(10,114) = 0.2;
notas(10,115) = 0.1;

notas(10,215) = 0.1;
notas(10,216) = 0.2;
notas(10,217) = 0.4;
notas(10,218) = 0.6;
notas(10,219) = 0.8;
notas(10,220) = 1; %LA mais ou menos grave
notas(10,221) = 0.8;
notas(10,222) = 0.6;
notas(10,223) = 0.4;
notas(10,224) = 0.2;
notas(10,225) = 0.1;

notas(10,435) = 0.1;
notas(10,436) = 0.2;
notas(10,437) = 0.4;
notas(10,438) = 0.6;
notas(10,439) = 0.8;
notas(10,440) = 1; %LA central
notas(10,441) = 0.8;
notas(10,442) = 0.6;
notas(10,443) = 0.4;
notas(10,444) = 0.2;
notas(10,445) = 0.1;

notas(10,875) = 0.1;
notas(10,876) = 0.2;
notas(10,877) = 0.4;
notas(10,878) = 0.6;
notas(10,879) = 0.8;
notas(10,880) = 1; %LA mais ou menos agudo
notas(10,881) = 0.8;
notas(10,882) = 0.6;
notas(10,883) = 0.4;
notas(10,884) = 0.2;
notas(10,885) = 0.1;

notas(10,1755) = 0.1;
notas(10,1756) = 0.2;
notas(10,1757) = 0.4;
notas(10,1758) = 0.6;
notas(10,1759) = 0.8;
notas(10,1760) = 1; %LA mais agudo
notas(10,1761) = 0.8;
notas(10,1762) = 0.6;
notas(10,1763) = 0.4;
notas(10,1764) = 0.2;
notas(10,1765) = 0.1;

%Combina��es de L�#

notas(11,112) = 0.1;
notas(11,113) = 0.2;
notas(11,114) = 0.4;
notas(11,115) = 0.6;
notas(11,116) = 0.8;
notas(11,117) = 1; %L�# mais grave
notas(11,118) = 0.8;
notas(11,119) = 0.6;
notas(11,120) = 0.4;
notas(11,121) = 0.2;
notas(11,122) = 0.1;

notas(11,229) = 0.1;
notas(11,230) = 0.2;
notas(11,231) = 0.4;
notas(11,232) = 0.6;
notas(11,233) = 0.8;
notas(11,234) = 1; %L�# mais ou menos grave
notas(11,235) = 0.8;
notas(11,236) = 0.6;
notas(11,237) = 0.4;
notas(11,238) = 0.2;
notas(11,239) = 0.1;

notas(11,464) = 0.1;
notas(11,465) = 0.2;
notas(11,466) = 0.4;
notas(11,467) = 0.6;
notas(11,468) = 0.8;
notas(11,469) = 1; %L�# central
notas(11,470) = 0.8;
notas(11,471) = 0.6;
notas(11,472) = 0.4;
notas(11,473) = 0.2;
notas(11,474) = 0.1;

notas(11,933) = 0.1;
notas(11,934) = 0.2;
notas(11,935) = 0.4;
notas(11,936) = 0.6;
notas(11,937) = 0.8;
notas(11,938) = 1; %L�# mais ou menos agudo
notas(11,939) = 0.8;
notas(11,940) = 0.6;
notas(11,941) = 0.4;
notas(11,942) = 0.2;
notas(11,943) = 0.1;

notas(11,1871) = 0.1;
notas(11,1872) = 0.2;
notas(11,1873) = 0.4;
notas(11,1874) = 0.6;
notas(11,1875) = 0.8;
notas(11,1876) = 1; %L�# mais agudo
notas(11,1877) = 0.8;
notas(11,1878) = 0.6;
notas(11,1879) = 0.4;
notas(11,1880) = 0.2;
notas(11,1881) = 0.1;

%Combina��es de SI

notas(12,119) = 0.1;
notas(12,120) = 0.2;
notas(12,121) = 0.4;
notas(12,122) = 0.6;
notas(12,123) = 0.8;
notas(12,124) = 1; %SI mais grave
notas(12,125) = 0.8;
notas(12,126) = 0.6;
notas(12,127) = 0.4;
notas(12,128) = 0.2;
notas(12,129) = 0.1;

notas(12,243) = 0.1;
notas(12,244) = 0.2;
notas(12,245) = 0.4;
notas(12,246) = 0.6;
notas(12,247) = 0.8;
notas(12,248) = 1; %SI mais ou menos grave
notas(12,249) = 0.8;
notas(12,250) = 0.6;
notas(12,251) = 0.4;
notas(12,252) = 0.2;
notas(12,253) = 0.1;

notas(12,490) = 0.1;
notas(12,491) = 0.2;
notas(12,492) = 0.4;
notas(12,493) = 0.6;
notas(12,494) = 0.8;
notas(12,495) = 1; %SI central
notas(12,496) = 0.8;
notas(12,497) = 0.6;
notas(12,498) = 0.4;
notas(12,499) = 0.2;
notas(12,450) = 0.1;

notas(12,985) = 0.1;
notas(12,986) = 0.2;
notas(12,987) = 0.4;
notas(12,988) = 0.6;
notas(12,989) = 0.8;
notas(12,990) = 1; %SI mais ou menos agudo
notas(12,991) = 0.8;
notas(12,992) = 0.6;
notas(12,993) = 0.4;
notas(12,994) = 0.2;
notas(12,995) = 0.1;

notas(12,1975) = 0.1;
notas(12,1976) = 0.2;
notas(12,1977) = 0.4;
notas(12,1978) = 0.6;
notas(12,1979) = 0.8;
notas(12,1980) = 1; %SI mais agudo
notas(12,1981) = 0.8;
notas(12,1982) = 0.6;
notas(12,1983) = 0.4;
notas(12,1984) = 0.2;
notas(12,1985) = 0.1;

%--------------------------

% BANCO DE DADOS PARA ACORDES

%--------------------------
BD(12,48) = 0; % inicializando o banco de dados para acordes
%--------------------------

afin1 = 0; afin2 = 0;

%C
%CM
BD(12,1) = afin1;
BD(1,1) = 1; %baixo
BD(2,1) = afin2;
BD(4,1) = afin1;
BD(5,1) = 1; %terça
BD(6,1) = afin2;
BD(7,1) = afin1;
BD(8,1) = 1; %quinta
BD(9,1) = afin2;
%Cm
BD(12,2) = afin1;
BD(1,2) = 1; %baixo
BD(2,2) = afin2;
BD(3,2) = afin1;
BD(4,2) = 1; %terça
BD(5,2) = afin2;
BD(7,2) = afin1;
BD(8,2) = 1; %quinta
BD(9,2) = afin2;
%Caum
BD(12,3) = afin1;
BD(1,3) = 1; %baixo
BD(2,3) = afin2;
BD(4,3) = afin1;
BD(5,3) = 1; %terça
BD(6,3) = afin2;
BD(8,3) = afin1;
BD(9,3) = 1; %quinta
BD(10,3) = afin2;
%Cdim
BD(12,4) = afin1;
BD(1,4) = 1; %baixo
BD(2,4) = afin2;
BD(3,4) = afin1;
BD(4,4) = 1; %terça
BD(5,4) = afin2;
BD(6,4) = afin1;
BD(7,4) = 1; %quinta
BD(8,4) = afin2;

%C#
%C#M
BD(1,5) = afin1;
BD(2,5) = 1; %baixo
BD(3,5) = afin2;
BD(5,5) = afin1;
BD(6,5) = 1; %terça
BD(7,5) = afin2;
BD(8,5) = afin1;
BD(9,5) = 1; %quinta
BD(10,5) = afin2;
%C#m
BD(1,6) = afin1;
BD(2,6) = 1; %baixo
BD(3,6) = afin2;
BD(4,6) = afin1;
BD(5,6) = 1; %terça
BD(6,6) = afin2;
BD(8,6) = afin1;
BD(9,6) = 1; %quinta
BD(10,6) = afin2;
%C#aum
BD(1,7) = afin1;
BD(2,7) = 1; %baixo
BD(3,7) = afin2;
BD(5,7) = afin1;
BD(6,7) = 1; %terça
BD(7,7) = afin2;
BD(9,7) = afin1;
BD(10,7) = 1; %quinta
BD(11,7) = afin2;
%C#dim
BD(1,8) = afin1;
BD(2,8) = 1; %baixo
BD(3,8) = afin2;
BD(4,8) = afin1;
BD(5,8) = 1; %terça
BD(6,8) = afin2;
BD(7,8) = afin1;
BD(8,8) = 1; %quinta
BD(9,8) = afin2;

%D
%DM
BD(2,9) = afin1;
BD(3,9) = 1; %baixo
BD(4,9) = afin2;
BD(6,9) = afin1;
BD(7,9) = 1; %terça
BD(8,9) = afin2;
BD(9,9) = afin1;
BD(10,9) = 1; %quinta
BD(11,9) = afin2;
%Dm
BD(2,10) = afin1;
BD(3,10) = 1; %baixo
BD(4,10) = afin2;
BD(5,10) = afin1;
BD(6,10) = 1; %terça
BD(7,10) = afin2;
BD(9,10) = afin1;
BD(10,10) = 1; %quinta
BD(11,10) = afin2;
%Daum
BD(2,11) = afin1;
BD(3,11) = 1; %baixo
BD(4,11) = afin2;
BD(6,11) = afin1;
BD(7,11) = 1; %terça
BD(8,11) = afin2;
BD(10,11) = afin1;
BD(11,11) = 1; %quinta
BD(11,11) = afin2;
%Ddim
BD(2,12) = afin1;
BD(3,12) = 1; %baixo
BD(4,12) = afin2;
BD(5,12) = afin1;
BD(6,12) = 1; %terça
BD(7,12) = afin2;
BD(8,12) = afin1;
BD(9,12) = 1; %quinta
BD(10,12) = afin2;

%D#
%D#M
BD(3,13) = afin1;
BD(4,13) = 1; %baixo
BD(5,13) = afin2;
BD(7,13) = afin1;
BD(8,13) = 1; %terça
BD(9,13) = afin2;
BD(10,13) = afin1;
BD(11,13) = 1; %quinta
BD(12,13) = afin2;
%D#m
BD(3,14) = afin1;
BD(4,14) = 1; %baixo
BD(5,14) = afin2;
BD(6,14) = afin1;
BD(7,14) = 1; %terça
BD(8,14) = afin2;
BD(10,14) = afin1;
BD(11,14) = 1; %quinta
BD(12,14) = afin2;
%D#aum
BD(3,15) = afin1;
BD(4,15) = 1; %baixo
BD(5,15) = afin2;
BD(7,15) = afin1;
BD(8,15) = 1; %terça
BD(9,15) = afin2;
BD(11,15) = afin1;
BD(12,15) = 1; %quinta
BD(1,15) = afin2;
%D#dim
BD(3,16) = afin1;
BD(4,16) = 1; %baixo
BD(5,16) = afin2;
BD(6,16) = afin1;
BD(7,16) = 1; %terça
BD(8,16) = afin2;
BD(9,16) = afin1;
BD(10,16) = 1; %quinta
BD(11,16) = afin2;

%E
%EM
BD(4,17) = afin1;
BD(5,17) = 1; %baixo
BD(6,17) = afin2;
BD(8,17) = afin1;
BD(9,17) = 1; %terça
BD(10,17) = afin2;
BD(11,17) = afin1;
BD(12,17) = 1; %quinta
BD(1,17) = afin2;
%Em
BD(4,18) = afin1;
BD(5,18) = 1; %baixo
BD(6,18) = afin2;
BD(7,18) = afin1;
BD(8,18) = 1; %terça
BD(9,18) = afin2;
BD(11,18) = afin1;
BD(12,18) = 1; %quinta
BD(1,18) = afin2;
%Eaum
BD(4,19) = afin1;
BD(5,19) = 1; %baixo
BD(6,19) = afin2;
BD(8,19) = afin1;
BD(9,19) = 1; %terça
BD(10,19) = afin2;
BD(12,19) = afin1;
BD(1,19) = 1; %quinta
BD(2,19) = afin2;
%Edim
BD(4,20) = afin1;
BD(5,20) = 1; %baixo
BD(6,20) = afin2;
BD(7,20) = afin1;
BD(8,20) = 1; %terça
BD(9,20) = afin2;
BD(10,20) = afin1;
BD(11,20) = 1; %quinta
BD(12,20) = afin2;

%F
%FM
BD(5,21) = afin1;
BD(6,21) = 1; %tonica
BD(7,21) = afin2;
BD(9,21) = afin1;
BD(10,21) = 1; %terça
BD(11,21) = afin2;
BD(12,21) = afin1;
BD(1,21) = 1; %quinta
BD(2,21) = afin2;
%Fm
BD(5,22) = afin1;
BD(6,22) = 1;
BD(7,22) = afin2;
BD(8,22) = afin1;
BD(9,22) = 1;
BD(10,22) = afin2;
BD(12,22) = afin1;
BD(1,22) = 1;
BD(2,22) = afin2;
%Faum
BD(5,23) = afin1;
BD(6,23) = 1;
BD(7,23) = afin2;
BD(9,23) = afin1;
BD(10,23) = 1;
BD(11,23) = afin2;
BD(1,23) = afin1;
BD(2,23) = 1;
BD(3,23) = afin2;
%Fdim
BD(5,24) = afin1;
BD(6,24) = 1;
BD(7,24) = afin2;
BD(8,24) = afin1;
BD(9,24) = 1;
BD(10,24) = afin2;
BD(11,24) = afin1;
BD(12,24) = 1;
BD(1,24) = afin2;

%F#
%F#M
BD(6,25) = afin1;
BD(7,25) = 1;
BD(8,25) = afin2;
BD(10,25) = afin1;
BD(11,25) = 1;
BD(12,25) = afin2;
BD(1,25) = afin1;
BD(2,25) = 1;
BD(3,25) = afin2;
%F#m
BD(6,26) = afin1;
BD(7,26) = 1;
BD(8,26) = afin2;
BD(9,26) = afin1;
BD(10,26) = 1;
BD(11,26) = afin2;
BD(1,26) = afin1;
BD(2,26) = 1;
BD(3,26) = afin2;
%F#aum
BD(6,27) = afin1;
BD(7,27) = 1;
BD(8,27) = afin2;
BD(10,27) = afin1;
BD(11,27) = 1;
BD(12,27) = afin2;
BD(2,27) = afin1;
BD(3,27) = 1;
BD(4,27) = afin2;
%F#dim
BD(6,28) = afin1;
BD(7,28) = 1;
BD(8,28) = afin2;
BD(9,28) = afin1;
BD(10,28) = 1;
BD(11,28) = afin2;
BD(12,28) = afin1;
BD(1,28) = 1;
BD(2,28) = afin2;

%G
%GM
BD(7,29) = afin1;
BD(8,29) = 1;
BD(9,29) = afin2;
BD(11,29) = afin1;
BD(12,29) = 1;
BD(1,29) = afin2;
BD(2,29) = afin1;
BD(3,29) = 1;
BD(4,29) = afin2;
%Gm
BD(7,30) = afin1;
BD(8,30) = 1;
BD(9,30) = afin2;
BD(10,30) = afin1;
BD(11,30) = 1;
BD(12,30) = afin2;
BD(2,30) = afin1;
BD(3,30) = 1;
BD(4,30) = afin2;
%Gaum
BD(7,31) = afin1;
BD(8,31) = 1;
BD(9,31) = afin2;
BD(11,31) = afin1;
BD(12,31) = 1;
BD(1,31) = afin2;
BD(3,31) = afin1;
BD(4,31) = 1;
BD(5,31) = afin2;
%Gdim
BD(7,32) = afin1;
BD(8,32) = 1;
BD(9,32) = afin2;
BD(10,32) = afin1;
BD(11,32) = 1;
BD(12,32) = afin2;
BD(1,32) = afin1;
BD(2,32) = 1;
BD(3,32) = afin2;

%G#
%G#M
BD(8,33) = afin1;
BD(9,33) = 1;
BD(10,33) = afin2;
BD(12,33) = afin1;
BD(1,33) = 1;
BD(2,33) = afin2;
BD(3,33) = afin1;
BD(4,33) = 1;
BD(5,33) = afin2;
%G#m
BD(8,34) = afin1;
BD(9,34) = 1;
BD(10,34) = afin2;
BD(11,34) = afin1;
BD(12,34) = 1;
BD(1,34) = afin2;
BD(3,34) = afin1;
BD(4,34) = 1;
BD(5,34) = afin2;
%G#aum
BD(8,35) = afin1;
BD(9,35) = 1;
BD(10,35) = afin2;
BD(12,35) = afin1;
BD(1,35) = 1;
BD(2,35) = afin2;
BD(4,35) = afin1;
BD(5,35) = 1;
BD(6,35) = afin2;
%G#dim
BD(8,36) = afin1;
BD(9,36) = 1;
BD(10,36) = afin2;
BD(11,36) = afin1;
BD(12,36) = 1;
BD(1,36) = afin2;
BD(2,36) = afin1;
BD(3,36) = 1;
BD(4,36) = afin2;

%A
%AM
BD(9,37) = afin1;
BD(10,37) = 1;
BD(11,37) = afin2;
BD(1,37) = afin1;
BD(2,37) = 1;
BD(3,37) = afin2;
BD(4,37) = afin1;
BD(5,37) = 1;
BD(6,37) = afin2;
%Am
BD(9,38) = afin1;
BD(10,38) = 1;
BD(11,38) = afin2;
BD(12,38) = afin1;
BD(1,38) = 1;
BD(2,38) = afin2;
BD(4,38) = afin1;
BD(5,38) = 1;
BD(6,38) = afin2;
%Aaum
BD(9,39) = afin1;
BD(10,39) = 1;
BD(11,39) = afin2;
BD(1,39) = afin1;
BD(2,39) = 1;
BD(3,39) = afin2;
BD(5,39) = afin1;
BD(6,39) = 1;
BD(7,39) = afin2;
%Adim
BD(9,40) = afin1;
BD(10,40) = 1;
BD(11,40) = afin2;
BD(12,40) = afin1;
BD(1,40) = 1;
BD(2,40) = afin2;
BD(3,40) = afin1;
BD(4,40) = 1;
BD(5,40) = afin2;

%A#
%A#M
BD(10,41) = afin1;
BD(11,41) = 1;
BD(12,41) = afin2;
BD(2,41) = afin1;
BD(3,41) = 1;
BD(4,41) = afin2;
BD(5,41) = afin1;
BD(6,41) = 1;
BD(7,41) = afin2;
%A#m
BD(10,42) = afin1;
BD(11,42) = 1;
BD(12,42) = afin2;
BD(1,42) = afin1;
BD(2,42) = 1;
BD(3,42) = afin2;
BD(5,42) = afin1;
BD(6,42) = 1;
BD(7,42) = afin2;
%A#aum
BD(10,43) = afin1;
BD(11,43) = 1;
BD(12,43) = afin2;
BD(2,43) = afin1;
BD(3,43) = 1;
BD(4,43) = afin2;
BD(6,43) = afin1;
BD(7,43) = 1;
BD(8,43) = afin2;
%A#dim
BD(10,44) = afin1;
BD(11,44) = 1;
BD(12,44) = afin2;
BD(1,44) = afin1;
BD(2,44) = 1;
BD(3,44) = afin2;
BD(4,44) = afin1;
BD(5,44) = 1;
BD(6,44) = afin2;

%B
%BM
BD(11,45) = afin1;
BD(12,45) = 1;
BD(1,45) = afin2;
BD(3,45) = afin1;
BD(4,45) = 1;
BD(5,45) = afin2;
BD(6,45) = afin1;
BD(7,45) = 1;
BD(8,45) = afin2;
%Bm
BD(11,46) = afin1;
BD(12,46) = 1;
BD(1,46) = afin2;
BD(2,46) = afin1;
BD(3,46) = 1;
BD(4,46) = afin2;
BD(6,46) = afin1;
BD(7,46) = 1;
BD(8,46) = afin2;
%Baum
BD(11,47) = afin1;
BD(12,47) = 1;
BD(1,47) = afin2;
BD(3,47) = afin1;
BD(4,47) = 1;
BD(5,47) = afin2;
BD(7,47) = afin1;
BD(8,47) = 1;
BD(9,47) = afin2;
%Bdim
BD(11,48) = afin1;
BD(12,48) = 1;
BD(1,48) = afin2;
BD(2,48) = afin1;
BD(3,48) = 1;
BD(4,48) = afin2;
BD(5,48) = afin1;
BD(6,48) = 1;
BD(7,48) = afin2;






%====================================



%====================================
% O U V I D O


%--------------------------
%MONO
som = som(1:length(som));
som = som/max(som);
%--------------------------


%--------------------------
%TRANSFORMADA DE FOURIER
fs = 44100; %tx amostragem
disp(length(som))
f = (0:length(som)-1)*fs/length(som); %vetor das frequ�ncias dispon�veis no som
disp(length(f))
freq = f(1:round(length(f)/2)); %vetor das frequ�ncias propriamente ditas
disp(length(freq))
SOM = abs(fft(som)); %transformada de fourier criando vetor respostas
disp(length(SOM))
SOM = SOM/max(SOM); %normaliza��o do vetor das respostas
disp(length(SOM))
SOM = SOM(1:round(length(f)/2)); %vetor das respostas propriamente ditas
disp(length(SOM))
%Transformando as respectivas frequ�ncias em slots
l = 1; %vari�vel auxiliar de contagem dos slots do novo vetor resposta-frequ�ncia
j = 0; %vari�vel auxiliar de contagem das respostas numa mesma faixa de frequ�ncia
i = 1; %vari�vel auxiliar de contagem dos slots do vetor resposta
SOMA = 0; 
while (i<length(freq))%la�o da acopla��o
    if (round(freq(i)) == round(freq(i+1)))%se as frequencias arrendondadas vizinhas forem iguais...
        SOMA = SOM(i+1) + SOMA;%soma das respostas das frequencias parecidas
        j = j + 1;%contagem de frequencias parecidas achadas
    else
        respfreq(l) = SOMA/(j+1);%incers�o da m�dia das frequencias parecidas no vetor 
        j = 0;%zerar a contagem das frequencias parecidas para o proximo conjunto de sequencias
        SOMA = SOM(i+1);%come�ando um novo conjunto de sequencias
        l = l+1;%proximo slot do respfreq
    end
    i = i+1;%proximo slot do vetor SOM   
end
%fim do la�o e zerando os contadores usados
l = 0; j = 0; i = 0;
stem(respfreq)
%--------------------------

%--------------------------
%EQUALIZACAO
x = sort(respfreq);
x = x(length(respfreq)-3);
a = (max(respfreq)-min(respfreq))/x;
b = max(respfreq)-a*x;
rfeq = (respfreq-b)/a;
%--------------------------

%====================================

%====================================
% C E R E B R O


%--------------------------
%RADIAL BASIS LAYER para BD notas

i = 1; %contador para andar ao longo do vetor
b = 0.15; %sensibilidade da rede


while (i <= 12)
    
     correlacao = corrcoef(rfeq,notas(i,:));
     S1(i) = correlacao(1,2);    
    %S1(i) = exp(-(norm(rfeq - notas(i,:))*b));

    i = i + 1;
end

%--------------------------
%RADIAL BASIS LAYER para BD acordes

i = 1; %contador para andar ao longo do vetor
b = 0.1; %sensibilidade da rede


while (i <= 48)
    
     correlacao = corrcoef(S1,BD(:,i)');
     S2(i) = correlacao(1,2);    
  %  S2(i) = exp(-(norm(S1 - BD(:,i)')*b));

    i = i + 1;
end


ACORDETOC = 'Nao sei qual eh!';

acordetoc = find(S2==max(S2));

%DECODIFICADOR

if (acordetoc == 1)
    ACORDETOC = 'CM';
end
if (acordetoc == 2)
    ACORDETOC = 'Cm';
end
if (acordetoc == 3)
    ACORDETOC = 'Caum';
end
if (acordetoc == 4)
    ACORDETOC = 'Cdim';
end
if (acordetoc == 5)
    ACORDETOC = 'C#M';
end
if (acordetoc == 6)
    ACORDETOC = 'C#m';
end
if (acordetoc == 7)
    ACORDETOC = 'C#aum';
end
if (acordetoc == 8)
    ACORDETOC = 'C#dim';
end
if (acordetoc == 9)
    ACORDETOC = 'DM';
end
if (acordetoc == 10)
    ACORDETOC = 'Dm';
end
if (acordetoc == 11)
    ACORDETOC = 'Daum';
end
if (acordetoc == 12)
    ACORDETOC = 'Ddim';
end
if (acordetoc == 13)
    ACORDETOC = 'D#M ou EbM';
end
if (acordetoc == 14)
    ACORDETOC = 'D#m ou Ebm';
end
if (acordetoc == 15)
    ACORDETOC = 'D#aum ou Ebaum';
end
if (acordetoc == 16)
    ACORDETOC = 'D#dim ou Ebdim';
end
if (acordetoc == 17)
    ACORDETOC = 'EM';
end
if (acordetoc == 18)
    ACORDETOC = 'Em';
end
if (acordetoc == 19)
    ACORDETOC = 'Eaum';
end
if (acordetoc == 20)
    ACORDETOC = 'Edim';
end
if (acordetoc == 21)
    ACORDETOC = 'FM';
end
if (acordetoc == 22)
    ACORDETOC = 'Fm';
end
if (acordetoc == 23)
    ACORDETOC = 'Faum';
end
if (acordetoc == 24)
    ACORDETOC = 'Fdim';
end
if (acordetoc == 25)
    ACORDETOC = 'F#M';
end
if (acordetoc == 26)
    ACORDETOC = 'F#m';
end
if (acordetoc == 27)
    ACORDETOC = 'F#aum';
end
if (acordetoc == 28)
    ACORDETOC = 'F#dim';
end
if (acordetoc == 29)
    ACORDETOC = 'GM';
end
if (acordetoc == 30)
    ACORDETOC = 'Gm';
end
if (acordetoc == 31)
    ACORDETOC = 'Gaum';
end
if (acordetoc == 32)
    ACORDETOC = 'Gdim';
end
if (acordetoc == 33)
    ACORDETOC = 'G#M ou AbM';
end
if (acordetoc == 34)
    ACORDETOC = 'G#m ou Abm';
end
if (acordetoc == 35)
    ACORDETOC = 'G#aum ou Abaum';
end
if (acordetoc == 36)
    ACORDETOC = 'G#dim ou Abdim';
end
if (acordetoc == 37)
    ACORDETOC = 'AM';
end
if (acordetoc == 38)
    ACORDETOC = 'Am';
end
if (acordetoc == 39)
    ACORDETOC = 'Aaum';
end
if (acordetoc == 40)
    ACORDETOC = 'Adim';
end
if (acordetoc == 41)
    ACORDETOC = 'A#M ou BbM';
end
if (acordetoc == 42)
    ACORDETOC = 'A#m ou Bbm';
end
if (acordetoc == 43)
    ACORDETOC = 'A#aum ou Bbaum';
end
if (acordetoc == 44)
    ACORDETOC = 'A#dim ou Bbdim';
end
if (acordetoc == 45)
    ACORDETOC = 'BM';
end
if (acordetoc == 46)
    ACORDETOC = 'Bm';
end
if (acordetoc == 47)
    ACORDETOC = 'Baum';
end
if (acordetoc == 48)
    ACORDETOC = 'Bdim';
end




toc

DA2 = ACORDETOC;

