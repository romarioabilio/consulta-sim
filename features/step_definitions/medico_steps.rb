#Cenário 3

Given("estou na pagina inicial do consulta-sim") do
  visit '/'
  expect(page).to have_content("Consulta Sim")

end

And("eu clico em cadastrar medico") do
  click_link "Cadastrar Médico"
  expect(page).to have_current_path('/medicos/new')
end

When('eu preencho os dados do medico nome_completo {string} cpf {string} email {string} especialidade {string} crm {string}') do |nome_completo,cpf, email, especialidade, crm|
  fill_in 'medico[nome_completo]', :with => nome_completo
  fill_in 'medico[cpf]', :with => cpf
  fill_in 'medico[email]', :with => email
  fill_in 'medico[especialidade]', :with => especialidade
  fill_in 'medico[crm]', :with => crm

end

When('eu clico no botao de criar medico') do
  click_button 'Criar Médico'
end

Then("eu vejo a mensagem de que o medico foi criado com sucesso") do
  expect(page).to have_content("Medico was successfully created.")
end


