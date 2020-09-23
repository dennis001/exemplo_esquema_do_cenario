class Login < SitePrism::Page
  set_url "https://demo.suiteondemand.com/"

  element :usu, "input[id='user_name']"
  element :pass, "input[id='username_password']"
  element :loginButton, "input[id='bigbutton']"
  element :loginPass, "button[id='with-label']"
  element :loginError, :xpath, "//*[@id='form']/span[3]"

  def login(usuario, senha)
    usu.set(usuario)
    pass.set(senha)
  end
end