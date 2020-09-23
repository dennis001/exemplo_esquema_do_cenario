#language: pt
#UTF-8
  Funcionalidade: Login

    Contexto: Login no site
      Dado que eu esteja na tela de login

    Esquema do Cenario: usuario e senha
      Quando incluir os dados de "<usuario>" e "<senha>"
      Entao recebo o "<resultado>" do meu login
      Exemplos:
      | usuario |  senha  |                    resultado                      |
      |   will  |   will  |                   Will Rennie                     |
      |  admin  |  admin  | You must specify a valid username and password.   |