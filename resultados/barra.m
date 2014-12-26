clear
clc

icms= [3.3 3.9 60.2 10.5 19.6 2.4];
bar(icms);
set(gca,'XTickLabel',{'Antecipado' 'Incentivado PADES' 'Normal' 'ST NAC DF' 'ST NAC fora do DF' 'Outros'})
xlabel('Modalidades de Arrecadação')
ylabel('Porcentagens')
