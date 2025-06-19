require "application_system_test_case"

class ROrganizacionalsTest < ApplicationSystemTestCase
  setup do
    @r_organizacional = r_organizacionais(:one)
  end

  test "visiting the index" do
    visit r_organizacionais_url
    assert_selector "h1", text: "R organizacionals"
  end

  test "should create r organizacional" do
    visit r_organizacionais_url
    click_on "New r organizacional"

    fill_in "Descricao", with: @r_organizacional.descricao
    fill_in "R tipo organizacional", with: @r_organizacional.r_tipo_organizacional_id
    click_on "Create R organizacional"

    assert_text "R organizacional was successfully created"
    click_on "Back"
  end

  test "should update R organizacional" do
    visit r_organizacional_url(@r_organizacional)
    click_on "Edit this r organizacional", match: :first

    fill_in "Descricao", with: @r_organizacional.descricao
    fill_in "R tipo organizacional", with: @r_organizacional.r_tipo_organizacional_id
    click_on "Update R organizacional"

    assert_text "R organizacional was successfully updated"
    click_on "Back"
  end

  test "should destroy R organizacional" do
    visit r_organizacional_url(@r_organizacional)
    click_on "Destroy this r organizacional", match: :first

    assert_text "R organizacional was successfully destroyed"
  end
end
