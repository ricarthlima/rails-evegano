require "application_system_test_case"

class UsuarioAvaliaProdutosTest < ApplicationSystemTestCase
  setup do
    @usuario_avalia_produto = usuario_avalia_produtos(:one)
  end

  test "visiting the index" do
    visit usuario_avalia_produtos_url
    assert_selector "h1", text: "Usuario Avalia Produtos"
  end

  test "creating a Usuario avalia produto" do
    visit usuario_avalia_produtos_url
    click_on "New Usuario Avalia Produto"

    fill_in "Comentario", with: @usuario_avalia_produto.comentario
    fill_in "Dt Avaliacao", with: @usuario_avalia_produto.dt_avaliacao
    fill_in "Estrelas", with: @usuario_avalia_produto.estrelas
    fill_in "Produto", with: @usuario_avalia_produto.produto_id
    fill_in "Usuario", with: @usuario_avalia_produto.usuario_id
    click_on "Create Usuario avalia produto"

    assert_text "Usuario avalia produto was successfully created"
    click_on "Back"
  end

  test "updating a Usuario avalia produto" do
    visit usuario_avalia_produtos_url
    click_on "Edit", match: :first

    fill_in "Comentario", with: @usuario_avalia_produto.comentario
    fill_in "Dt Avaliacao", with: @usuario_avalia_produto.dt_avaliacao
    fill_in "Estrelas", with: @usuario_avalia_produto.estrelas
    fill_in "Produto", with: @usuario_avalia_produto.produto_id
    fill_in "Usuario", with: @usuario_avalia_produto.usuario_id
    click_on "Update Usuario avalia produto"

    assert_text "Usuario avalia produto was successfully updated"
    click_on "Back"
  end

  test "destroying a Usuario avalia produto" do
    visit usuario_avalia_produtos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Usuario avalia produto was successfully destroyed"
  end
end
