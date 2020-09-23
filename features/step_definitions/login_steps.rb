Dado('que eu esteja na tela de login') do
  @login = Login.new
  @login.load
end

Quando('incluir os dados de {string} e {string}') do |usuario, senha|
  @login.login(usuario, senha)
  @login.loginButton.click
end

Entao('recebo o {string} do meu login') do |resultado|
  if @login.has_loginPass?
    expect(@login.loginPass.text).to eq(resultado)
    print @login.loginPass.text
  elsif @login.has_loginError?
    expect(@login.loginError.text).to eq(resultado)
    print @login.loginError.text
  else
    print "Verifique se o texto esta coerente com o bdd"
  end
end
