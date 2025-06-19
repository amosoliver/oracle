require "test_helper"

class REstruturasOrganizacionaisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @r_estrutura_organizacional = r_estruturas_organizacionais(:one)
  end

  test "should get index" do
    get r_estruturas_organizacionais_url
    assert_response :success
  end

  test "should get new" do
    get new_r_estrutura_organizacional_url
    assert_response :success
  end

  test "should create r_estrutura_organizacional" do
    assert_difference("REstruturaOrganizacional.count") do
      post r_estruturas_organizacionais_url, params: { r_estrutura_organizacional: { i_ambiente_predial_id: @r_estrutura_organizacional.i_ambiente_predial_id, r_organizacional_id: @r_estrutura_organizacional.r_organizacional_id } }
    end

    assert_redirected_to r_estrutura_organizacional_url(REstruturaOrganizacional.last)
  end

  test "should show r_estrutura_organizacional" do
    get r_estrutura_organizacional_url(@r_estrutura_organizacional)
    assert_response :success
  end

  test "should get edit" do
    get edit_r_estrutura_organizacional_url(@r_estrutura_organizacional)
    assert_response :success
  end

  test "should update r_estrutura_organizacional" do
    patch r_estrutura_organizacional_url(@r_estrutura_organizacional), params: { r_estrutura_organizacional: { i_ambiente_predial_id: @r_estrutura_organizacional.i_ambiente_predial_id, r_organizacional_id: @r_estrutura_organizacional.r_organizacional_id } }
    assert_redirected_to r_estrutura_organizacional_url(@r_estrutura_organizacional)
  end

  test "should destroy r_estrutura_organizacional" do
    assert_difference("REstruturaOrganizacional.count", -1) do
      delete r_estrutura_organizacional_url(@r_estrutura_organizacional)
    end

    assert_redirected_to r_estruturas_organizacionais_url
  end
end
