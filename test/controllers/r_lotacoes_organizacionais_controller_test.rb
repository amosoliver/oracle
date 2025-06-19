require "test_helper"

class RLotacoesOrganizacionaisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @r_lotacao_organizacional = r_lotacoes_organizacionais(:one)
  end

  test "should get index" do
    get r_lotacoes_organizacionais_url
    assert_response :success
  end

  test "should get new" do
    get new_r_lotacao_organizacional_url
    assert_response :success
  end

  test "should create r_lotacao_organizacional" do
    assert_difference("RLotacaoOrganizacional.count") do
      post r_lotacoes_organizacionais_url, params: { r_lotacao_organizacional: { r_contrato_servidor_id: @r_lotacao_organizacional.r_contrato_servidor_id, r_estrutura_organizacional: @r_lotacao_organizacional.r_estrutura_organizacional } }
    end

    assert_redirected_to r_lotacao_organizacional_url(RLotacaoOrganizacional.last)
  end

  test "should show r_lotacao_organizacional" do
    get r_lotacao_organizacional_url(@r_lotacao_organizacional)
    assert_response :success
  end

  test "should get edit" do
    get edit_r_lotacao_organizacional_url(@r_lotacao_organizacional)
    assert_response :success
  end

  test "should update r_lotacao_organizacional" do
    patch r_lotacao_organizacional_url(@r_lotacao_organizacional), params: { r_lotacao_organizacional: { r_contrato_servidor_id: @r_lotacao_organizacional.r_contrato_servidor_id, r_estrutura_organizacional: @r_lotacao_organizacional.r_estrutura_organizacional } }
    assert_redirected_to r_lotacao_organizacional_url(@r_lotacao_organizacional)
  end

  test "should destroy r_lotacao_organizacional" do
    assert_difference("RLotacaoOrganizacional.count", -1) do
      delete r_lotacao_organizacional_url(@r_lotacao_organizacional)
    end

    assert_redirected_to r_lotacoes_organizacionais_url
  end
end
