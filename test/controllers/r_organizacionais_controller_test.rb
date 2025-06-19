require "test_helper"

class ROrganizacionaisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @r_organizacional = r_organizacionais(:one)
  end

  test "should get index" do
    get r_organizacionais_url
    assert_response :success
  end

  test "should get new" do
    get new_r_organizacional_url
    assert_response :success
  end

  test "should create r_organizacional" do
    assert_difference("ROrganizacional.count") do
      post r_organizacionais_url, params: { r_organizacional: { descricao: @r_organizacional.descricao, r_tipo_organizacional_id: @r_organizacional.r_tipo_organizacional_id } }
    end

    assert_redirected_to r_organizacional_url(ROrganizacional.last)
  end

  test "should show r_organizacional" do
    get r_organizacional_url(@r_organizacional)
    assert_response :success
  end

  test "should get edit" do
    get edit_r_organizacional_url(@r_organizacional)
    assert_response :success
  end

  test "should update r_organizacional" do
    patch r_organizacional_url(@r_organizacional), params: { r_organizacional: { descricao: @r_organizacional.descricao, r_tipo_organizacional_id: @r_organizacional.r_tipo_organizacional_id } }
    assert_redirected_to r_organizacional_url(@r_organizacional)
  end

  test "should destroy r_organizacional" do
    assert_difference("ROrganizacional.count", -1) do
      delete r_organizacional_url(@r_organizacional)
    end

    assert_redirected_to r_organizacionais_url
  end
end
