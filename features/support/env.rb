require 'rspec'
require 'cucumber'
require 'selenium-webdriver'
require 'capybara/cucumber'
require 'site_prism'
require 'pry'
require 'faker'
require 'cpf_faker'
require 'httparty'

$wait = Selenium::WebDriver::Wait.new :timeout => 30

#configurando o driver Capybara
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

#Setando a configuraão do driver como padrão
Capybara.default_driver = :selenium

#Time padrão na execução
Capybara.default_max_wait_time = 30

#Maximizar a tela ao iniciar os testes
Capybara.page.driver.browser.manage.window.maximize
