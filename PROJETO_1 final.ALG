Algoritmo "Projeto_1"
//
//
// Aluno: Arthur Pereira De Souza
// CPD: 045929
// Data atual  : 28/03/2019
// Disciplina: Programação Orientada a Objetos
// Professor: Aldo Henrique
Var
   opcao, num1, num2: inteiro // Variaveis para a Divisão
   resultado: real

   contador, pessoas, idade, sexo, quantM, quantF, totalM: inteiro
   totalF, quantP: inteiro           // Variaveis para a Faixa Etaria
   mediaTotal, mediaM, mediaF: real

   primo, c, i, xnumero, soma:inteiro // Variaveis para Numeros Primos

   Numdigitado, maior, menor, contador2, Numtotal, SomaNum: inteiro
   mediaNumdigitado: real // Variaveis para maior, menor, media

   nmorse: inteiro  // Variaveis para o Codigo Morse

   Numdecimal, ValorDecimal: inteiro
   Resultado1: Caracter // Variaveis para a Mudança de Base
inicio
   repita
      escreval("Menu Principal:")
      escreval("1 - Divisão")
      escreval("2 - Faixa Etária")
      escreval("3 - Números Primos")
      escreval("4 - Retornar o maior, menor, média")
      escreval("5 - Código Morse")
      escreval("6 - Mudança de Base")
      escreval("7 - Sair do programa")
      escreval()
      leia(opcao)
      escolha opcao

         menu
         escolha opcao
         caso 1
            escreval("Sua escolha foi a divisão")
            escreval("Digite o dividendo:")
            leia(num1)
            escreval("Digite o divisor:")
            leia(num2)
            se (num1 = 0) ou (num2 = 0) entao  // num1 e num2 não podem ser 0
               escreval("Impossível dividir")
            senao
               resultado <- num1/num2
               escreval("Resultado da divisão é", resultado)
            fimse
            escreval()
         caso 2
            escreval("Sua escolha foi a Faixa Etaria")
            escreval()
            contador <- 1
            escreval("Digite a quantidade de pessoas:")
            leia(pessoas)
            repita
               escreval("Digite a idade da", contador, "ª pessoa:")
               leia(idade)
               quantP <- quantP + idade // quantP para saber a quantidade de pessoas
               escreval("Digite (1) para Masculino e (2) para Feminino") // para conseguir uma melhor visualização
               leia(sexo)
               se (sexo = 1) entao
                  totalM <- totalM + 1 // totalM = total de pessoas masculinas digitadas
                  quantM <- quantM + idade
               senao
                  se (sexo = 2) entao
                     totalF <- totalF + 1 // totalF = total de pessoas femininas digitadas
                     quantF <- quantF + idade
                  senao
                     repita
                        escreval("Informe o valor verdadeiro para sexo") // se digitar diferente de 1 e 2
                        escreval("Digite (1) para Masculino e (2) para Feminino")
                        leia(sexo)
                     ate (sexo = 1) ou (sexo = 2)
                  fimse
               fimse
               contador <- contador + 1
            ate (contador > pessoas)
            mediaTotal <- quantP / pessoas  // operações feitas fora do laço de repetição
            se(quantM > 0) entao
               mediaM <- quantM / totalM
            fimse
            se (quantF > 0) entao
               mediaF <- quantF / totalF
            fimse
            escreval("Media das idades das pessoas: ", mediaTotal)
            escreval("Media da idade de Masculino: ", mediaM)
            escreval("Media da idade de Feminino: ", mediaF)
            escreval()
         caso 3
            escreval("Sua escolha foi Numeros primos")
            escreval()
            escreva("Digite um numero:")
            leia(xnumero)
            para c de 1 ate xnumero faca // dois contadores declarados
               primo <- 0
               para i de 1 ate c faca
                  se (c mod i=0) entao // resto tem que ser 0
                     primo <- primo + 1
                  fimse
               fimpara
               se (primo = 2) entao
                  escreval(c)
                  soma <- c + soma // recebe o contador + soma
               fimse
            fimpara
            escreval("A soma dos numeros primos é", soma)
            escreval()
         caso 4
            escreval("Sua escolha foi Retornar o maior, menor e a media")
            escreval()
            escreval("Digite a quantidade numeros:")
            leia(Numtotal)
            se Numtotal > 0 entao
               para contador2 de 1 ate Numtotal passo 1 faca
                  escreval("Digite o", contador2, "º numero:")
                  leia(Numdigitado)
                  se (contador2 = 1) entao
                     maior <- Numdigitado
                     menor <- Numdigitado
                  fimse
                  se (Numdigitado > maior) entao
                     maior <- Numdigitado
                  senao
                  fimse
                  se (Numdigitado < menor) entao
                     menor <- Numdigitado
                  fimse
               fimse
               SomaNum <- SomaNum + Numdigitado
            fimpara
            mediaNumdigitado <- SomaNum / Numtotal
            escreval("O numero maior é:", maior)
            escreval("O numero menor é:", menor)
            escreval("A media dos numeros digitados é:", mediaNumdigitado)
         senao
            escreval("Numero digitado invalido")
         fimse
         escreval()

      caso 5
         escreval("Sua escolha foi Codigo Morse")
         escreval()
         escreval("Digite um numero para saber seu codigo morse:")
         leia(nmorse)
         escolha(nmorse)
         caso 1
            escreval(".----")
         caso 2
            escreval("..---")
         caso 3
            escreval("...--")
         caso 4
            escreval("....-")
         caso 5
            escreval(".....")
         caso 6
            escreval("-....")
         caso 7
            escreval("--...")
         caso 8
            escreval("---..")
         caso 9
            escreval("----.")
         caso 0
            escreval("-----")
         caso 11
            escreval(".---- /.----")
         caso 12
            escreval(".---- / ..---")
         caso 13
            escreval(".---- / ...--")
         caso 14
            escreval(".---- / ....-")
         caso 15
            escreval(".---- / .....")
         caso 16
            escreval(".---- / -....")
         caso 17
            escreval(".---- / --...")
         caso 18
            escreval(".---- / ---..")
         caso 19
            escreval(".---- / ----.")
         caso 20
            escreval("..--- / -----")
         outrocaso
            escreval("O valor informado é incorreto")
         fimescolha
         escreval()
      caso 6
         escreval("Sua escolha foi Mudança de Base")
         escreval()
         escreval ("Digite um valor Decimal: ")
         leia (Numdecimal)
         ValorDecimal <- (Numdecimal)
         enquanto (Numdecimal > 0) faca       // Só consegui fazer a mudança de decimal para binário
            Escolha (Numdecimal mod 2)
            caso 0
               Resultado1 <- ("0" + Resultado1)
            caso 1
               Resultado1 <- ("1" + Resultado1)
            FimEscolha
            Numdecimal <- (Numdecimal div 2)
         fimenquanto
         escreval ("O valor: ", ValorDecimal, " em Decimal será de: ", Resultado1, " em Binários")
      fimescolha
   ate opcao = 7
Fimalgoritmo