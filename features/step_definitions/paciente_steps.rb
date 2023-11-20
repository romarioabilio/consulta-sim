# Cenário 1

Given("estou na pagina inicial") do
  visit '/'
  expect(page).to have_content("Consulta Sim")

end

And("eu clico em cadastrar paciente") do
  click_link "Cadastrar Paciente"
  expect(page).to have_current_path('/pacientes/new')
end

When('eu preencho os dados nome_completo {string} data_nascimento {string} cpf {string} email {string} cep {string} cidade {string} bairro {string} logradouro {string} complemento {string}') do |nome_completo, data_nascimento, cpf, email, cep, cidade, bairro, logradouro, complemento|
  fill_in 'paciente[nome_completo]', :with => nome_completo
  fill_in 'paciente[data_nascimento]', :with => data_nascimento
  fill_in 'paciente[cpf]', :with => cpf
  fill_in 'paciente[email]', :with => email
  fill_in 'paciente[endereco_attributes][cep]', :with => cep
  fill_in 'paciente[endereco_attributes][cidade]', :with => cidade
  fill_in 'paciente[endereco_attributes][bairro]', :with => bairro
  fill_in 'paciente[endereco_attributes][logradouro]', :with => logradouro
  fill_in 'paciente[endereco_attributes][complemento]', :with => complemento
end

When('eu clico no botao de criar paciente') do
  click_button 'Criar paciente'
end

Then("eu vejo a mensagem de que o paciente foi criado com sucesso") do
  expect(page).to have_content("Paciente was successfully created.")
end




