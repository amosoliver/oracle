require "application_system_test_case"

class IAmbientePredialsTest < ApplicationSystemTestCase
  setup do
    @i_ambiente_predial = i_ambientes_prediais(:one)
  end

  test "visiting the index" do
    visit i_ambientes_prediais_url
    assert_selector "h1", text: "I ambiente predials"
  end

  test "should create i ambiente predial" do
    visit i_ambientes_prediais_url
    click_on "New i ambiente predial"

    fill_in "Descricao", with: @i_ambiente_predial.descricao
    fill_in "I predio", with: @i_ambiente_predial.i_predio_id
    click_on "Create I ambiente predial"

    assert_text "I ambiente predial was successfully created"
    click_on "Back"
  end

  test "should update I ambiente predial" do
    visit i_ambiente_predial_url(@i_ambiente_predial)
    click_on "Edit this i ambiente predial", match: :first

    fill_in "Descricao", with: @i_ambiente_predial.descricao
    fill_in "I predio", with: @i_ambiente_predial.i_predio_id
    click_on "Update I ambiente predial"

    assert_text "I ambiente predial was successfully updated"
    click_on "Back"
  end

  test "should destroy I ambiente predial" do
    visit i_ambiente_predial_url(@i_ambiente_predial)
    click_on "Destroy this i ambiente predial", match: :first

    assert_text "I ambiente predial was successfully destroyed"
  end
end
