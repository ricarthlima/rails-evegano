require "application_system_test_case"

class UsuarioBuscaProdutosTest < ApplicationSystemTestCase
  setup do
    @usuario_busca_produto = usuario_busca_produtos(:one)
  end

  test "visiting the index" do
    visit usuario_busca_produtos_url
    assert_selector "h1", text: "Usuario Busca Produtos"
  end

  test "creating a Usuario busca produto" do
    visit usuario_busca_produtos_url
    click_on "New Usuario Busca Produto"

    fill_in "Dt Busca", with: @usuario_busca_produto.dt_busca
    fill_in "Produto", with: @usuario_busca_produto.produto_id
    fill_in "Usuario", with: @usuario_busca_produto.usuario_id
    click_on "Create Usuario busca produto"

    assert_text "Usuario busca produto was successfully created"
    click_on "Back"
  end

  test "updating a Usuario busca produto" do
    visit usuario_busca_produtos_url
    click_on "Edit", match: :first

    fill_in "Dt Busca", with: @usuario_busca_produto.dt_busca
    fill_in "Produto", with: @usuario_busca_produto.produto_id
    fill_in "Usuario", with: @usuario_busca_produto.usuario_id
    click_on "Update Usuario busca produto"

    assert_text "Usuario busca produto was successfully updated"
    click_on "Back"
  end

  test "destroying a Usuario busca produto" do
    visit usuario_busca_produtos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Usuario busca produto was successfully destroyed"
  end
end
