Feature:
  As a paciente
  I want to cadastrar minhas informacoes pessoais, como nome completo, data de nascimento, CPF, email, endereco
  So that eu possa agendar uma consulta medica e visualizar meu cadastro

  Scenario: cadastrar paciente
    Given estou na pagina inicial
    And eu clico em cadastrar paciente
    When eu preencho os dados nome_completo 'Romário Abílio' data_nascimento '2001-08-22' cpf '11403528498' email 'romarioabilio@hotmail.com' cep '55700000' cidade 'Limoeiro' bairro 'Centro' logradouro 'Rua Alto do Moura' complemento 'casa azul'
    And eu clico no botao de criar paciente
    Then eu vejo a mensagem de que o paciente foi criado com sucesso