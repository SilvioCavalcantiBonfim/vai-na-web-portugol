programa {
  cadeia usuario = "admin"
  cadeia senha = "admin"
  funcao inicio() {
    cadeia lerUsuario, lerSenha
    inteiro tentativas = 3
    logico autenticado = falso
    faca{
      escreva("\nInforme o seu usuário: ")
      leia(lerUsuario)
      escreva("\nInforme sua senha: ")
      leia(lerSenha)
      se(lerSenha == senha e lerUsuario == usuario){
        autenticado = verdadeiro
        escreva("\nUsuário autenticado com sucesso!")
      }senao{
        tentativas = tentativas - 1
        se(tentativas > 0)
          escreva("\nUsuário e senha não correspondentes, você tem ",tentativas," restantes.")
        senao
          escreva("\nSistema bloqueado.")
      }
    }enquanto(nao autenticado e tentativas > 0)

  }
}
