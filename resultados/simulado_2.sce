// Resolução do simulado 2
// Data: 06/10/2014

clear
close

// declaração de funções

exec drfolhas.sce;
exec showbar.sce;

function s=cdf_func(f)
    m= length(f);
    s= zeros(1,m);
    s(1)= f(1);
    for kk=2:m
       s(kk)= f(kk)+s(kk-1); 
    end
    return s;
endfunction

/////////////////////////////////////////////////

clc

/////////////////////////////////////////////////
// 1a Questão

disp("1a Questão")

Dados= [159	168	172	175	181,161	168	173	176	183, ...
162	169	173	177	185,164	170	174	178	190,166	171	174	179	194,...
167	171	174	180	201];

// Faça o agrupamento dos dados por intervalos.

div= 10;
[ramos,folhas,frek]= drfolhas(Dados,div);

// Calculos

m= length(frek);
cdf= zeros(1,m);
saida1= cell(8,4);
saida1(1,1).entries= 'EXE01/CLASSES';
saida1(1,2).entries= 'Xmi';
saida1(1,3).entries= 'FREQ';
saida1(1,4).entries= 'Xmi*FREQi';
for kk=1:(m-1)
    saida1(kk+1,1).entries= sprintf('%3.0f |-> %3.0f',ramos(kk),ramos(kk+1)); 
    med= (ramos(kk)+ramos(kk+1))/2;
    saida1(kk+1,2).entries= med;
    saida1(kk+1,3).entries= frek(kk);
    saida1(kk+1,4).entries= med*frek(kk);        
end
// ultima classe
    h= div*(ramos(2)-ramos(1));
    saida1(kk+2,1).entries= sprintf('%3.0f |-> %3.0f',ramos(kk+1),ramos(kk+1)+h); 
    med= (2*ramos(kk+1)+h)/2;
    saida1(kk+2,2).entries= med;
    saida1(kk+2,3).entries= frek(kk+1);
    saida1(kk+2,4).entries= med*frek(kk+1);        
// Resultados
saida1(kk+3,1).entries= 'Total'
cdf= cdf_func(cell2mat(saida1(2:7,3)));
saida1(kk+3,3).entries= cdf(m);
saida1(kk+3,4).entries= sum(cell2mat(saida1(2:7,4)));
// Media
saida1(kk+4,1).entries= 'Media';
saida1(kk+4,4).entries= cell2mat(saida1(kk+3,4))/cell2mat(saida1(kk+3,3));
// Mediana
P= (cell2mat(saida1(kk+3,3))+1)/2;
classe= length(find(P>cdf))+1;
fi= cell2mat(saida1(classe+1,3)); 
saida1(kk+5,1).entries= 'Mediana';
saida1(kk+5,4).entries= ramos(classe)+(cdf(m)/2-cdf(classe-1))*h/fi;
disp(saida1)
// Proporções
// individuos com altura minima de 170
todos_acima_de_170= sum(frek(find(ramos*div>=170)));
todos_abaixo_de_180= sum(frek(find(ramos*div<180)));

todos_abaixo_de_190= sum(frek(find(ramos*div<190)));
todos_abaixo_de_170= sum(frek(find(ramos*div<170)));
todos_entre_170_190= todos_abaixo_de_190-todos_abaixo_de_170;

propor_acima_de_170= 100*todos_acima_de_170/cdf(m);
propor_abaixo_de_180= 100*todos_abaixo_de_180/cdf(m);
propor_entre_170_190= 100*todos_entre_170_190/cdf(m);

disp(" ")

texto= "Proporção de itens com altura";
printf(texto+"mínima de 170 cm = %2.1f%%\n",propor_acima_de_170);
printf(texto+"máxima de 180 cm = %2.1f%%\n",propor_abaixo_de_180);
printf(texto+"entre 170 e 190 cm = %2.1f%%\n",propor_entre_170_190);

/////////////////////////////////////////////////
// 2a Questão

disp("2a Questão")
disp("")

printf( ...
"Nem sempre. Se os dados estão simetricamente distribuidos em torno \n" + ...
"da média, então é possível aumentar o número de indivíduos até que \n" + ...
"estes dois parâmetros sejam aproximados. \n" ...
)

/////////////////////////////////////////////////
// 3a Questão

disp("3a Questão")
disp("")

printf( ...
"A Variância eleva ao quadrado a unidade dos dados [u^2], tornando \n" + ...
"impossível fazer comparações desta com os próprios dados analisados \n" + ...
"que possuem unidade [u]. O desvio padrão representa a raiz quadrada \n" + ...
"da Variância, e portanto possui unidade [u]. \n" + ...
"              ________________________________         \n" + ...
"             |   _ 2      _ 2            _ 2  |        \n" + ...
"            |(x1-x) + (x2-x) + ... + (xn-x)            \n" + ...
"Desv_p = - | --------------------------------          \n" + ...
"          |                N-1                         \n" + ...
"                                                       \n" ...
)

////////////////////////////////////////////////
// 4a Questão

disp("4a Questão")
disp("")

media= 300;
dp= 5;
// normalizando para normal padrão
x1= 310;
x2= 295;
[P1,R1]=cdfnor("PQ",x1,media,dp);
[P2,R2]=cdfnor("PQ",x2,media,dp);
// respostas
texto= "A porcentagem de valores ";
printf(texto+"acima de %0.0f é: %2.2f%%\n",x1,100*R1);
printf(texto+"inferiores de %0.0f é: %2.2f%%\n",x2,100*P2);
printf(texto+"entre %0.0f e %0.0f é: %2.2f%%\n",x1,x2,100*(P1-P2));

////////////////////////////////////////////////
// 5a Questão

disp("5a Questão")
disp("")

mi_A= 30.0; // compra
sig_A= 10.0;
mi_B= 20.0; // venda
sig_B= 2.5;

// Gráficos: FDP

Z= -7:0.1:+7;
PDF_A= 1/(sig_A*sqrt(2*%pi))*exp(-0.5*Z.^2);
PDF_B= 1/(sig_B*sqrt(2*%pi))*exp(-0.5*Z.^2);

XA= Z*sig_A+mi_A;
XB= Z*sig_B+mi_B;

// gráficos
xset("window",1)
plot(XA,PDF_A,'red',XB,PDF_B,'blue');
title("5a Questão")
legend('Avião A','Avião B')
xlabel('Tempo para falha [h]')
ylabel('Probabilidades')
// calculos
x= 12//horas;
[PA,RA]=cdfnor("PQ",x,mi_A,sig_A);
[PB,RB]=cdfnor("PQ",x,mi_B,sig_B);
texto= "Com %2.2f%% de confiabilidade o avião %s deveverá ser escolhido.\n";
if  RA>RB then
    printf(texto,100*RA,"A");
else
    printf(texto,100*RB,"B");
end

////////////////////////////////////////////////
// 6a Questão

disp("6a Questão")

mi_A= 300.00; // compra
sig_A= 12.00;
mi_B= 400.00; // venda
sig_B= 33.00;

// Gráficos: FDP

Z= -7:0.1:+7;
PDF_A= 1/(sig_A*sqrt(2*%pi))*exp(-0.5*Z.^2);
PDF_B= 1/(sig_B*sqrt(2*%pi))*exp(-0.5*Z.^2);

xset("window",2)
XA= Z*sig_A+mi_A;
XB= Z*sig_B+mi_B;
plot(XA,PDF_A,'red',XB,PDF_B,'blue');
legend('COMPRA','VENDA')
xlabel('Tempo para Falha')
ylabel('Probabilidades')

// Resolução:

// Adotando o "Limite de Erro" como critério para determinação dos valores
// plausíveis máximos e mínimos de ccompra e venda da ação, respectivamente
// temos:

LIB= mi_B-3*sig_B;
LSA= mi_A+3*sig_A;

// Ou seja, já podemos concluir que o valor de compra pode vir a ser maior do
// que o lvalor de venda. A probabilidade desta falha ocorrer pode ser
// estimada por:

LIM= 0.5*min(max(PDF_A),max(PDF_B));
plot(LIB*ones(1,100),linspace(0,LIM,100),'.blue');
plot(LSA*ones(1,100),linspace(0,LIM,100),'.red');

// probabilidade de se ter lucro na condição crítica de venda
// Venda = mi_B - 3*Sigma
x= mi_B-3*sig_B;
[P1,R1]=cdfnor("PQ",x,mi_A,sig_A);

// probabilidade de se ter lucro:
// L = V - C >= 0
mi_L= mi_B-mi_A;
sig_L= sqrt(sig_A^2+sig_B^2);
[P2,R2]=cdfnor("PQ",0,mi_L,sig_L);

// apresentação do resultado 
saida= sprintf('Para uma condição crítica de venda, a ' + ...
'probabilidade de prejuízo é de %0.2f%%\n',100*P1);
disp(saida)
saida= sprintf('A probabilidade de lucro é %0.2f%%\n',100*R2);
disp(saida)

////////////////////////////////////////////////
// 7a Questão

disp("7a Questão")
disp("Gráfico")

// Questão 7
Dados= [
120.28  115.36  113.68  117.79  131.54 
115.65  117.78  118.75  119.34  124.39 
121.81  120.54  120.67  126.88  118.48 
123.05  118.58  123.38  116.04  121.89 
123.90  121.30  118.67  123.56  115.26 
116.79  121.76  127.35  121.33  128.82 
121.99  115.73  117.73  118.85  124.30 
120.37  119.11  121.42  115.17  123.57 
123.75  110.54  122.99  118.62  115.97 
122.39  125.27  120.30  119.52  121.39 
124.09  117.07  124.01  113.37  117.38 
119.31  114.53  121.40  120.80  118.50 
119.24  118.76  116.38  116.21  117.33 
124.62  113.55  111.93  119.48  115.31 
110.58  119.82  128.73  121.46  115.82 
117.62  117.37  117.18  115.84  118.96 
114.24  130.31  120.39  118.60  112.38 
118.17  125.24  122.52  121.53  122.73 
122.92  109.01  120.43  111.80  119.37 
123.75  121.95  115.84  124.75  123.16 ];
//--------------------------------------------------
xset("window",3);
[Centrais,Barras]= showbar(Dados,3);
bar(Centrais,Barras);
a=gca(); a=gca();
newTicks= a.x_ticks;
newTicks(2)= Centrais;
newTicks(3)= string(Centrais);
a.x_ticks=newTicks;

disp("8a Questão")
disp("")

mi= 440.00; // compra
sig= 1.00;

// Gráficos: FDP
Z= [-7:0.1:7];
PDF= 1/(sig_A*sqrt(2*%pi))*exp(-0.5*Z.^2);
[index]= find(Z<-3); PDF(index)= 0;
[index]= find(Z>3); PDF(index)= 0;
[index]= find(Z>-0.5&Z<0.5); PDF(index)= 0;

xset("window",4);
plot(Z,PDF);
legend('Diapasões de Sopro')
xlabel('Frequência [Hz]')
ylabel('Probabilidades')

// Porcentagem de itens da classe A
[P1,R1]=cdfnor("PQ",440.5,mi,sig);
P1= 2*(P1-0.5);

// apresentação do resultado 
saida= sprintf('Porcentagem de itens da classe A: %0.2f%%\n',100*P1);
disp(saida)
