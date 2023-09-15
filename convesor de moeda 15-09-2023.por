programa {

  funcao inteiro seletor(cadeia msg) {
    inteiro opcao = 0
    faca{
      escreva("\n1 - Real")
      escreva("\n2 - Dolar")
      escreva("\n3 - Euro")
      escreva("\n"+msg)
      leia(opcao)
    }enquanto(opcao < 1 e opcao > 3 )
    retorne opcao
  }

  funcao inicio() {
    inteiro moeda1, moeda2
    real valorConvertido, valorFinal
    moeda1 = seletor("Escolha a moeda base:")
    moeda2 = seletor("Escolha a moeda para converter:")
    escreva("Qual valor você dezeja converter: ")
    leia(valorConvertido)
    se(moeda1 == 2){
      valorConvertido = valorConvertido*4.8683
    }
     se(moeda1 == 3){
      valorConvertido = valorConvertido*5.1954
    }
    escolha(moeda2){
      caso 1:
        valorFinal = valorConvertido
      caso 2:
        valorFinal = 0.1924*valorConvertido
      caso 3:
        valorFinal = 0.2054*valorConvertido
    }
    escreva("Valor final: ", valorFinal)
    
  }
}
