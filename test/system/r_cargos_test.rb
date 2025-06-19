require "application_system_test_case"

class RCargosTest < ApplicationSystemTestCase
  setup do
    @r_cargo = r_cargos(:one)
  end

  test "visiting the index" do
    visit r_cargos_url
    assert_selector "h1", text: "R cargos"
  end

  test "should create r cargo" do
    visit r_cargos_url
    click_on "New r cargo"

    fill_in "Descricao", with: @r_cargo.descricao
    click_on "Create R cargo"

    assert_text "R cargo was successfully created"
    click_on "Back"
  end

  test "should update R cargo" do
    visit r_cargo_url(@r_cargo)
    click_on "Edit this r cargo", match: :first

    fill_in "Descricao", with: @r_cargo.descricao
    click_on "Update R cargo"

    assert_text "R cargo was successfully updated"
    click_on "Back"
  end

  test "should destroy R cargo" do
    visit r_cargo_url(@r_cargo)
    click_on "Destroy this r cargo", match: :first

    assert_text "R cargo was successfully destroyed"
  end
end
