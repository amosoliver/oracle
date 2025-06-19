require "test_helper"

class RTiposOrganizacionaisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @r_tipo_organizacional = r_tipos_organizacionais(:one)
  end

  test "should get index" do
    get r_tipos_organizacionais_url
    assert_response :success
  end

  test "should get new" do
    get new_r_tipo_organizacional_url
    assert_response :success
  end

  test "should create r_tipo_organizacional" do
    assert_difference("RTipoOrganizacional.count") do
      post r_tipos_organizacionais_url, params: { r_tipo_organizacional: { descricao: @r_tipo_organizacional.descricao } }
    end

    assert_redirected_to r_tipo_organizacional_url(RTipoOrganizacional.last)
  end

  test "should show r_tipo_organizacional" do
    get r_tipo_organizacional_url(@r_tipo_organizacional)
    assert_response :success
  end

  test "should get edit" do
    get edit_r_tipo_organizacional_url(@r_tipo_organizacional)
    assert_response :success
  end

  test "should update r_tipo_organizacional" do
    patch r_tipo_organizacional_url(@r_tipo_organizacional), params: { r_tipo_organizacional: { descricao: @r_tipo_organizacional.descricao } }
    assert_redirected_to r_tipo_organizacional_url(@r_tipo_organizacional)
  end

  test "should destroy r_tipo_organizacional" do
    assert_difference("RTipoOrganizacional.count", -1) do
      delete r_tipo_organizacional_url(@r_tipo_organizacional)
    end

    assert_redirected_to r_tipos_organizacionais_url
  end
end
