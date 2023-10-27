require "test_helper"

class MedicosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medico = medicos(:one)
  end

  test "should get index" do
    get medicos_url
    assert_response :success
  end

  test "should get new" do
    get new_medico_url
    assert_response :success
  end

  test "should create medico" do
    assert_difference("Medico.count") do
      post medicos_url, params: { medico: { cpf: @medico.cpf, crm: @medico.crm, email: @medico.email, especialidade: @medico.especialidade, nome_completo: @medico.nome_completo } }
    end

    assert_redirected_to medico_url(Medico.last)
  end

  test "should show medico" do
    get medico_url(@medico)
    assert_response :success
  end

  test "should get edit" do
    get edit_medico_url(@medico)
    assert_response :success
  end

  test "should update medico" do
    patch medico_url(@medico), params: { medico: { cpf: @medico.cpf, crm: @medico.crm, email: @medico.email, especialidade: @medico.especialidade, nome_completo: @medico.nome_completo } }
    assert_redirected_to medico_url(@medico)
  end

  test "should destroy medico" do
    assert_difference("Medico.count", -1) do
      delete medico_url(@medico)
    end

    assert_redirected_to medicos_url
  end
end
