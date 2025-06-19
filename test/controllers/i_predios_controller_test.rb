require "test_helper"

class IPrediosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @i_predio = i_predios(:one)
  end

  test "should get index" do
    get i_predios_url
    assert_response :success
  end

  test "should get new" do
    get new_i_predio_url
    assert_response :success
  end

  test "should create i_predio" do
    assert_difference("IPredio.count") do
      post i_predios_url, params: { i_predio: { cnpj: @i_predio.cnpj, g_municipio_id: @i_predio.g_municipio_id, nome_fantasia: @i_predio.nome_fantasia } }
    end

    assert_redirected_to i_predio_url(IPredio.last)
  end

  test "should show i_predio" do
    get i_predio_url(@i_predio)
    assert_response :success
  end

  test "should get edit" do
    get edit_i_predio_url(@i_predio)
    assert_response :success
  end

  test "should update i_predio" do
    patch i_predio_url(@i_predio), params: { i_predio: { cnpj: @i_predio.cnpj, g_municipio_id: @i_predio.g_municipio_id, nome_fantasia: @i_predio.nome_fantasia } }
    assert_redirected_to i_predio_url(@i_predio)
  end

  test "should destroy i_predio" do
    assert_difference("IPredio.count", -1) do
      delete i_predio_url(@i_predio)
    end

    assert_redirected_to i_predios_url
  end
end
