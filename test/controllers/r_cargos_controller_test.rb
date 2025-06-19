require "test_helper"

class RCargosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @r_cargo = r_cargos(:one)
  end

  test "should get index" do
    get r_cargos_url
    assert_response :success
  end

  test "should get new" do
    get new_r_cargo_url
    assert_response :success
  end

  test "should create r_cargo" do
    assert_difference("RCargo.count") do
      post r_cargos_url, params: { r_cargo: { descricao: @r_cargo.descricao } }
    end

    assert_redirected_to r_cargo_url(RCargo.last)
  end

  test "should show r_cargo" do
    get r_cargo_url(@r_cargo)
    assert_response :success
  end

  test "should get edit" do
    get edit_r_cargo_url(@r_cargo)
    assert_response :success
  end

  test "should update r_cargo" do
    patch r_cargo_url(@r_cargo), params: { r_cargo: { descricao: @r_cargo.descricao } }
    assert_redirected_to r_cargo_url(@r_cargo)
  end

  test "should destroy r_cargo" do
    assert_difference("RCargo.count", -1) do
      delete r_cargo_url(@r_cargo)
    end

    assert_redirected_to r_cargos_url
  end
end
