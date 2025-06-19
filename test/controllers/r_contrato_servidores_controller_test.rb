require "test_helper"

class RContratoServidoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @r_contrato_servidor = r_contrato_servidores(:one)
  end

  test "should get index" do
    get r_contrato_servidores_url
    assert_response :success
  end

  test "should get new" do
    get new_r_contrato_servidor_url
    assert_response :success
  end

  test "should create r_contrato_servidor" do
    assert_difference("RContratoServidor.count") do
      post r_contrato_servidores_url, params: { r_contrato_servidor: { g_pessoa_id: @r_contrato_servidor.g_pessoa_id, matricula: @r_contrato_servidor.matricula, r_cargo_id: @r_contrato_servidor.r_cargo_id } }
    end

    assert_redirected_to r_contrato_servidor_url(RContratoServidor.last)
  end

  test "should show r_contrato_servidor" do
    get r_contrato_servidor_url(@r_contrato_servidor)
    assert_response :success
  end

  test "should get edit" do
    get edit_r_contrato_servidor_url(@r_contrato_servidor)
    assert_response :success
  end

  test "should update r_contrato_servidor" do
    patch r_contrato_servidor_url(@r_contrato_servidor), params: { r_contrato_servidor: { g_pessoa_id: @r_contrato_servidor.g_pessoa_id, matricula: @r_contrato_servidor.matricula, r_cargo_id: @r_contrato_servidor.r_cargo_id } }
    assert_redirected_to r_contrato_servidor_url(@r_contrato_servidor)
  end

  test "should destroy r_contrato_servidor" do
    assert_difference("RContratoServidor.count", -1) do
      delete r_contrato_servidor_url(@r_contrato_servidor)
    end

    assert_redirected_to r_contrato_servidores_url
  end
end
