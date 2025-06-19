require "application_system_test_case"

class RLotacaoOrganizacionalsTest < ApplicationSystemTestCase
  setup do
    @r_lotacao_organizacional = r_lotacoes_organizacionais(:one)
  end

  test "visiting the index" do
    visit r_lotacoes_organizacionais_url
    assert_selector "h1", text: "R lotacao organizacionals"
  end

  test "should create r lotacao organizacional" do
    visit r_lotacoes_organizacionais_url
    click_on "New r lotacao organizacional"

    fill_in "R contrato servidor", with: @r_lotacao_organizacional.r_contrato_servidor_id
    fill_in "R estrutura organizacional", with: @r_lotacao_organizacional.r_estrutura_organizacional
    click_on "Create R lotacao organizacional"

    assert_text "R lotacao organizacional was successfully created"
    click_on "Back"
  end

  test "should update R lotacao organizacional" do
    visit r_lotacao_organizacional_url(@r_lotacao_organizacional)
    click_on "Edit this r lotacao organizacional", match: :first

    fill_in "R contrato servidor", with: @r_lotacao_organizacional.r_contrato_servidor_id
    fill_in "R estrutura organizacional", with: @r_lotacao_organizacional.r_estrutura_organizacional
    click_on "Update R lotacao organizacional"

    assert_text "R lotacao organizacional was successfully updated"
    click_on "Back"
  end

  test "should destroy R lotacao organizacional" do
    visit r_lotacao_organizacional_url(@r_lotacao_organizacional)
    click_on "Destroy this r lotacao organizacional", match: :first

    assert_text "R lotacao organizacional was successfully destroyed"
  end
end
