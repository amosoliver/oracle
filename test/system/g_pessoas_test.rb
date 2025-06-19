require "application_system_test_case"

class GPessoasTest < ApplicationSystemTestCase
  setup do
    @g_pessoa = g_pessoas(:one)
  end

  test "visiting the index" do
    visit g_pessoas_url
    assert_selector "h1", text: "G pessoas"
  end

  test "should create g pessoa" do
    visit g_pessoas_url
    click_on "New g pessoa"

    fill_in "Cpf", with: @g_pessoa.cpf
    fill_in "Nome", with: @g_pessoa.nome
    click_on "Create G pessoa"

    assert_text "G pessoa was successfully created"
    click_on "Back"
  end

  test "should update G pessoa" do
    visit g_pessoa_url(@g_pessoa)
    click_on "Edit this g pessoa", match: :first

    fill_in "Cpf", with: @g_pessoa.cpf
    fill_in "Nome", with: @g_pessoa.nome
    click_on "Update G pessoa"

    assert_text "G pessoa was successfully updated"
    click_on "Back"
  end

  test "should destroy G pessoa" do
    visit g_pessoa_url(@g_pessoa)
    click_on "Destroy this g pessoa", match: :first

    assert_text "G pessoa was successfully destroyed"
  end
end
