Given("que eu estou na tela de cadastro de tipo de usuário") do
  visit new_usuario_registration_path
end

When("eu selecionar o tipo {string}") do |string|
  page.tipo_usuario(string)
end

When("eu clicar em cadastrar") do
  
end

Then("eu deveria ter um tipo de usuário {string}.") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end
