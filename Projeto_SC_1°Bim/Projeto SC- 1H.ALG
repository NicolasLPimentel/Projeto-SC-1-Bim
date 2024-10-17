Algoritmo "Conversor"
Var
   opcao, quantidade, x, digito, y: inteiro
   multiplicador, soma, decimal, aux, termo: real
   resto_binario: vetor [1..100] de inteiro

Inicio
   // Loop principal para escolher a opção
   repita
      escreval("========================")
      escreval("Conversor:")
      escreval("(1) Binário para Decimal")
      escreval("(2) Decimal para Binário")
      escreval("========================")
      leia(opcao)
      se (opcao <> 1) e (opcao <> 2) entao
         escreval("Opção inválida")
      fimse
   ate (opcao = 1) ou (opcao = 2)

   // Loop principal para conversão
   repita
      limpatela

      // Se a opção for Binário para Decimal
      se (opcao = 1) entao
         enquanto (opcao = 1) faca
            soma <- 0

            // Solicita a quantidade de dígitos do número binário
            repita
               escreval("Digite a quantidade de dígitos do número binário")
               escreval("que deseja converter:")
               leia(quantidade)
               se (quantidade <= 0) ou (quantidade > 9999) entao
                  escreval("===========================")
                  escreval("Número inválido")
                  escreval("===========================")
               fimse
            ate (quantidade > 0) e (quantidade <= 9999)

            limpatela

            // Leitura e validação dos dígitos binários
            para x de 1 ate quantidade faca
               repita
                  escreval("Digite o ", x, "º dígito:")
                  leia(digito)
                  se (digito <> 0) e (digito <> 1) entao
                     escreval("===========================")
                     escreval("Dígito inválido")
                     escreval("===========================")
                  fimse
               ate (digito = 0) ou (digito = 1)

               // Conversão de binário para decimal
               aux <- quantidade - x
               multiplicador <- 2 ^ aux
               termo <- digito * multiplicador
               soma <- soma + termo
            fimpara

            limpatela
            escreval("O número convertido para decimal é: ", soma)

            // Pergunta se deseja realizar outra conversão
            repita
               escreval("===================================")
               escreval("Gostaria de converter novamente?")
               escreval("===================================")
               escreval("(1) Binário para Decimal")
               escreval("(2) Decimal para Binário")
               escreval("(3) Finalizar o programa")
               leia(opcao)
               se (opcao <> 1) e (opcao <> 2) e (opcao <> 3) entao
                  escreval("Opção inválida")
               fimse
            ate (opcao = 1) ou (opcao = 2) ou (opcao = 3)
         fimenquanto

      // Se a opção for Decimal para Binário
      senao
         enquanto (opcao = 2) faca
            x <- 1

            // Solicita o número decimal para conversão
            repita
               escreval("Digite o número decimal:")
               leia(decimal)
               se (decimal <= 0) ou (decimal > 9999) entao
                  escreval("===========================")
                  escreval("Número inválido")
                  escreval("===========================")
               fimse
            ate (decimal > 0) e (decimal <= 9999)

            limpatela
            escreval("O número convertido para binário é:")

            // Conversão de decimal para binário
            repita
               resto_binario[x] <- inteiro(decimal % 2)
               decimal <- inteiro(decimal / 2)
               x <- x + 1
            ate (decimal = 0) ou (decimal = 1)

            // Exibe o resultado da conversão
            escreva("1")
            x <- x - 1
            para y de x ate 1 passo -1 faca
               se (resto_binario[y] = 0) entao
                  escreva("0")
               senao
                  escreva("1")
               fimse
            fimpara
            escreval("")

            // Pergunta se deseja realizar outra conversão
            repita
               escreval("===================================")
               escreval("Gostaria de converter novamente?")
               escreval("===================================")
               escreval("(1) Binário para Decimal")
               escreval("(2) Decimal para Binário")
               escreval("(3) Finalizar o programa")
               leia(opcao)
               se (opcao <> 1) e (opcao <> 2) e (opcao <> 3) entao
                  escreval("Opção inválida")
               fimse
            ate (opcao = 1) ou (opcao = 2) ou (opcao = 3)

            limpatela
         fimenquanto
      fimse
   ate (opcao = 3)
Fimalgoritmo
