require "application_system_test_case"

class ProdutoNomeAlternativosTest < ApplicationSystemTestCase
  setup do
    @produto_nome_alternativo = produto_nome_alternativos(:one)
  end

  test "visiting the index" do
    visit produto_nome_alternativos_url
    assert_selector "h1", text: "Produto Nome Alternativos"
  end

  test "creating a Produto nome alternativo" do
    visit produto_nome_alternativos_url
    click_on "New Produto Nome Alternativo"

    fill_in "Nome Alternativo", with: @produto_nome_alternativo.nome_alternativo
    fill_in "Produto", with: @produto_nome_alternativo.produto_id
    click_on "Create Produto nome alternativo"

    assert_text "Produto nome alternativo was successfully created"
    click_on "Back"
  end

  test "updating a Produto nome alternativo" do
    visit produto_nome_alternativos_url
    click_on "Edit", match: :first

    fill_in "Nome Alternativo", with: @produto_nome_alternativo.nome_alternativo
    fill_in "Produto", with: @produto_nome_alternativo.produto_id
    click_on "Update Produto nome alternativo"

    assert_text "Produto nome alternativo was successfully updated"
    click_on "Back"
  end

  test "destroying a Produto nome alternativo" do
    visit produto_nome_alternativos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Produto nome alternativo was successfully destroyed"
  end
end
