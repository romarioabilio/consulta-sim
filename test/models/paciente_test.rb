require "test_helper"

class PacienteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end


  test 'Cadastrar paciente com dados validos' do
    paciente = Paciente.new nome_completo: 'Romário Abílio', data_nascimento: "2001-08-22",
                            cpf: "11403528498", email: "romarioabilio@hotmail.com"
    assert paciente.save
  end
  test 'Cadastrar paciente com CPF vazio' do
    paciente = Paciente.new nome_completo: 'Romário Abílio', data_nascimento: "2001-08-22",
                            cpf: "", email: "romarioabilio@hotmail.com"
    assert_not paciente.save
  end
end
