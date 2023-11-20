require "test_helper"

class MedicoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'salvar medico com dados validos' do
    medico = Medico.new nome_completo: 'Romário Abílio', cpf: '11403528498', email: 'romario@gmail.com',
                        especialidade: 'Ortopedista', crm: '123456'
    assert medico.save
  end

  test 'salvar medico com crm vazio' do
    medico = Medico.new nome_completo: 'Romário Abílio', cpf: '11403528498', email: 'romario@gmail.com',
                        especialidade: 'Ortopedista' , crm: ''
    assert_not medico.save
  end
end
