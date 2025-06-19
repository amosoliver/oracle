require "application_system_test_case"

class IPrediosTest < ApplicationSystemTestCase
  setup do
    @i_predio = i_predios(:one)
  end

  test "visiting the index" do
    visit i_predios_url
    assert_selector "h1", text: "I predios"
  end

  test "should create i predio" do
    visit i_predios_url
    click_on "New i predio"

    fill_in "Cnpj", with: @i_predio.cnpj
    fill_in "G municipio", with: @i_predio.g_municipio_id
    fill_in "Nome fantasia", with: @i_predio.nome_fantasia
    click_on "Create I predio"

    assert_text "I predio was successfully created"
    click_on "Back"
  end

  test "should update I predio" do
    visit i_predio_url(@i_predio)
    click_on "Edit this i predio", match: :first

    fill_in "Cnpj", with: @i_predio.cnpj
    fill_in "G municipio", with: @i_predio.g_municipio_id
    fill_in "Nome fantasia", with: @i_predio.nome_fantasia
    click_on "Update I predio"

    assert_text "I predio was successfully updated"
    click_on "Back"
  end

  test "should destroy I predio" do
    visit i_predio_url(@i_predio)
    click_on "Destroy this i predio", match: :first

    assert_text "I predio was successfully destroyed"
  end
end
