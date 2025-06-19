require "test_helper"

class IAmbientesPrediaisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @i_ambiente_predial = i_ambientes_prediais(:one)
  end

  test "should get index" do
    get i_ambientes_prediais_url
    assert_response :success
  end

  test "should get new" do
    get new_i_ambiente_predial_url
    assert_response :success
  end

  test "should create i_ambiente_predial" do
    assert_difference("IAmbientePredial.count") do
      post i_ambientes_prediais_url, params: { i_ambiente_predial: { descricao: @i_ambiente_predial.descricao, i_predio_id: @i_ambiente_predial.i_predio_id } }
    end

    assert_redirected_to i_ambiente_predial_url(IAmbientePredial.last)
  end

  test "should show i_ambiente_predial" do
    get i_ambiente_predial_url(@i_ambiente_predial)
    assert_response :success
  end

  test "should get edit" do
    get edit_i_ambiente_predial_url(@i_ambiente_predial)
    assert_response :success
  end

  test "should update i_ambiente_predial" do
    patch i_ambiente_predial_url(@i_ambiente_predial), params: { i_ambiente_predial: { descricao: @i_ambiente_predial.descricao, i_predio_id: @i_ambiente_predial.i_predio_id } }
    assert_redirected_to i_ambiente_predial_url(@i_ambiente_predial)
  end

  test "should destroy i_ambiente_predial" do
    assert_difference("IAmbientePredial.count", -1) do
      delete i_ambiente_predial_url(@i_ambiente_predial)
    end

    assert_redirected_to i_ambientes_prediais_url
  end
end
