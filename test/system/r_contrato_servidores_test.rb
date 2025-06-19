require "application_system_test_case"

class RContratoServidorsTest < ApplicationSystemTestCase
  setup do
    @r_contrato_servidor = r_contrato_servidores(:one)
  end

  test "visiting the index" do
    visit r_contrato_servidores_url
    assert_selector "h1", text: "R contrato servidors"
  end

  test "should create r contrato servidor" do
    visit r_contrato_servidores_url
    click_on "New r contrato servidor"

    fill_in "G pessoa", with: @r_contrato_servidor.g_pessoa_id
    fill_in "Matricula", with: @r_contrato_servidor.matricula
    fill_in "R cargo", with: @r_contrato_servidor.r_cargo_id
    click_on "Create R contrato servidor"

    assert_text "R contrato servidor was successfully created"
    click_on "Back"
  end

  test "should update R contrato servidor" do
    visit r_contrato_servidor_url(@r_contrato_servidor)
    click_on "Edit this r contrato servidor", match: :first

    fill_in "G pessoa", with: @r_contrato_servidor.g_pessoa_id
    fill_in "Matricula", with: @r_contrato_servidor.matricula
    fill_in "R cargo", with: @r_contrato_servidor.r_cargo_id
    click_on "Update R contrato servidor"

    assert_text "R contrato servidor was successfully updated"
    click_on "Back"
  end

  test "should destroy R contrato servidor" do
    visit r_contrato_servidor_url(@r_contrato_servidor)
    click_on "Destroy this r contrato servidor", match: :first

    assert_text "R contrato servidor was successfully destroyed"
  end
end
