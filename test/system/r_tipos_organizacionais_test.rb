require "application_system_test_case"

class RTipoOrganizacionalsTest < ApplicationSystemTestCase
  setup do
    @r_tipo_organizacional = r_tipos_organizacionais(:one)
  end

  test "visiting the index" do
    visit r_tipos_organizacionais_url
    assert_selector "h1", text: "R tipo organizacionals"
  end

  test "should create r tipo organizacional" do
    visit r_tipos_organizacionais_url
    click_on "New r tipo organizacional"

    fill_in "Descricao", with: @r_tipo_organizacional.descricao
    click_on "Create R tipo organizacional"

    assert_text "R tipo organizacional was successfully created"
    click_on "Back"
  end

  test "should update R tipo organizacional" do
    visit r_tipo_organizacional_url(@r_tipo_organizacional)
    click_on "Edit this r tipo organizacional", match: :first

    fill_in "Descricao", with: @r_tipo_organizacional.descricao
    click_on "Update R tipo organizacional"

    assert_text "R tipo organizacional was successfully updated"
    click_on "Back"
  end

  test "should destroy R tipo organizacional" do
    visit r_tipo_organizacional_url(@r_tipo_organizacional)
    click_on "Destroy this r tipo organizacional", match: :first

    assert_text "R tipo organizacional was successfully destroyed"
  end
end
