require "test_helper"

class ConsultumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  #

  test 'Criando consulta com dados validos' do
    paciente = Paciente.new nome_completo: 'Romário Abílio de França', data_nascimento: '2001-08-22',
                            cpf: '11403528498', email: 'romarioabilio@hotmail.com'
    assert paciente.save

    medico = Medico.new nome_completo: 'Romário Abílio', cpf: '05621812450', email: 'romario@gmail.com',
                        especialidade: 'Ortopedista', crm: '223546'
    assert medico.save

    consulta = Consultum.new data: '2023-12-25', horario: '09:30',
                             paciente_id: paciente.id, medico_id: medico.id
    assert consulta.save
  end

  test 'Criando consulta com data invalida' do
    paciente = Paciente.new nome_completo: 'Romário Abílio', data_nascimento: "2001-08-22",
                            cpf: "11403528498", email: "romarioabilio@hotmail.com"
    assert paciente.save

    medico = Medico.new nome_completo: 'Romário Abílio', cpf: '11403528498', email: 'romario@gmail.com',
                        especialidade: 'Ortopedista', crm: '123456'
    assert medico.save

    consulta = Consultum.new data: DateTime.yesterday, horario: '07:00',
                             paciente_id: paciente.id, medico_id: medico.id
    assert_not consulta.save
  end
end

