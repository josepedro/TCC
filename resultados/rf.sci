function [SINAL,f]=rf(sinal,fs)
f=(0:length(sinal)-1)*fs/length(sinal);
t = fft(sinal);
SINAL=sqrt(t.*conj(t));
SINAL=abs(SINAL);
scf(10);
plot(f(1:round(length(f)/2)),SINAL(1:round(length(f)/2)),'-o');
//%stem(f(1:round(length(f)/2)),SINAL(1:round(length(f)/2)));


   // xtitle('Resposta em Frequência', 'Frequência (Hz)', 'Resposta');
    //Transformando as respectivas frequencias em slots
    l = 1; //variavel auxiliar de contagem dos slots do novo vetor resposta-frequencia
    j = 0; //variavel auxiliar de contagem das respostas numa mesma faixa de frequencia
    i = 1; //variavel auxiliar de contagem dos slots do vetor resposta
    SOMA = 0; 
    while (i<length(freq))//laco da acoplacao
        if (round(freq(i)) == round(freq(i+1)))//se as frequencias arrendondadas vizinhas forem iguais...
            SOMA = SOM(i+1) + SOMA;//soma das respostas das frequencias parecidas
            j = j + 1;//contagem de frequencias parecidas achadas
        else
            respfreq(l) = SOMA/(j+1);//incersao da media das frequencias parecidas no vetor 
            j = 0;//zerar a contagem das frequencias parecidas para o proximo conjunto de sequencias
            SOMA = SOM(i+1);//comecando um novo conjunto de sequencias
            l = l+1;//proximo slot do respfreq
        end
        i = i+1;//proximo slot do vetor SOM   
    end
    //fim do laco e zerando os contadores usados
    l = 0; j = 0; i = 0;
    //--------------------------


endfunction