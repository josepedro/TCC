function respfreq = get_fourier_transform(som)

//--------------------------
//TRANSFORMADA DE FOURIER
fs = 44100; //tx amostragem
f = (0:length(som)-1)*fs/length(som); //vetor das frequ�ncias dispon�veis no som
freq = f(1:round(length(f)/2)); //vetor das frequ�ncias propriamente ditas
SOM = abs(fft(som)); //transformada de fourier criando vetor respostas
SOM = SOM/max(SOM); //normaliza��o do vetor das respostas
SOM = SOM(1:round(length(f)/2)); //vetor das respostas propriamente ditas
//Transformando as respectivas frequ�ncias em slots
l = 1; //vari�vel auxiliar de contagem dos slots do novo vetor resposta-frequ�ncia
j = 0; //vari�vel auxiliar de contagem das respostas numa mesma faixa de frequ�ncia
i = 1; //vari�vel auxiliar de contagem dos slots do vetor resposta
SOMA = 0; 
while (i<length(freq))//la�o da acopla��o
    if (round(freq(i)) == round(freq(i+1)))//se as frequencias arrendondadas vizinhas forem iguais...
        SOMA = SOM(i+1) + SOMA;//soma das respostas das frequencias parecidas
        j = j + 1;//contagem de frequencias parecidas achadas
    else
        respfreq(l) = SOMA/(j+1);//incers�o da m�dia das frequencias parecidas no vetor 
        j = 0;//zerar a contagem das frequencias parecidas para o proximo conjunto de sequencias
        SOMA = SOM(i+1);//come�ando um novo conjunto de sequencias
        l = l+1;//proximo slot do respfreq
    end
    i = i+1;//proximo slot do vetor SOM   
end
//fim do la�o e zerando os contadores usados
l = 0; j = 0; i = 0;
//--------------------------

endfunction