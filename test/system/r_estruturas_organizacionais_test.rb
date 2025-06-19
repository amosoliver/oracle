require "application_system_test_case"

class REstruturaOrganizacionalsTest < ApplicationSystemTestCase
  setup do
    @r_estrutura_organizacional = r_estruturas_organizacionais(:one)
  end

  test "visiting the index" do
    visit r_estruturas_organizacionais_url
    assert_selector "h1", text: "R estrutura organizacionals"
  end

  test "should create r estrutura organizacional" do
    visit r_estruturas_organizacionais_url
    click_on "New r estrutura organizacional"

    fill_in "I ambiente predial", with: @r_estrutura_organizacional.i_ambiente_predial_id
    fill_in "R organizacional", with: @r_estrutura_organizacional.r_organizacional_id
    click_on "Create R estrutura organizacional"

    assert_text "R estrutura organizacional was successfully created"
    click_on "Back"
  end

  test "should update R estrutura organizacional" do
    visit r_estrutura_organizacional_url(@r_estrutura_organizacional)
    click_on "Edit this r estrutura organizacional", match: :first

    fill_in "I ambiente predial", with: @r_estrutura_organizacional.i_ambiente_predial_id
    fill_in "R organizacional", with: @r_estrutura_organizacional.r_organizacional_id
    click_on "Update R estrutura organizacional"

    assert_text "R estrutura organizacional was successfully updated"
    click_on "Back"
  end

  test "should destroy R estrutura organizacional" do
    visit r_estrutura_organizacional_url(@r_estrutura_organizacional)
    click_on "Destroy this r estrutura organizacional", match: :first

    assert_text "R estrutura organizacional was successfully destroyed"
  end
end
