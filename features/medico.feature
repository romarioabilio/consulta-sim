Feature:
  As a medico
  I want to cadastrar minhas informaçoes profissionais, como nome completo, CPF, email,
  especialidade e numero do CRM
  So that eu possa atender pacientes e visualizar meu cadastro profissional.

  Scenario: cadastrar medico
    Given estou na pagina inicial do consulta-sim
    And eu clico em cadastrar medico
    When eu preencho os dados do medico nome_completo 'Romário Abílio' cpf '12345678912' email 'romario@gmail.com' especialidade 'Ortopedista' crm '654321'
    And eu clico no botao de criar medico
    Then eu vejo a mensagem de que o medico foi criado com sucesso


