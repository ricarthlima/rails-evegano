Given("que eu estou na tela de cadastro de tipo de usuário") do
  visit new_usuario_registration_path
end

When("eu selecionar o tipo {string}") do |string|
  case string
  when "outros"
    page.tipo_usuario(4)
  when "vegano"
    page.tipo_usuario(0)
  when "vegetariano"
    page.tipo_usuario(1)
  when "ovolactovegetariano"
    page.tipo_usuario(2)
  when "lactovegetariano"
    page.tipo_usuario(3)
  else
    page.tipo_usuario(-1)
  end
end

When("eu clicar em cadastrar") do
  page.submit
end

Then("eu deveria ter um tipo de usuário {string}.") do |string|
  pending
end
