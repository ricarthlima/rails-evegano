require "application_system_test_case"

class ProdutoImagemsTest < ApplicationSystemTestCase
  setup do
    @produto_imagem = produto_imagems(:one)
  end

  test "visiting the index" do
    visit produto_imagems_url
    assert_selector "h1", text: "Produto Imagems"
  end

  test "creating a Produto imagem" do
    visit produto_imagems_url
    click_on "New Produto Imagem"

    fill_in "Descricao", with: @produto_imagem.descricao
    fill_in "Titulo", with: @produto_imagem.titulo
    click_on "Create Produto imagem"

    assert_text "Produto imagem was successfully created"
    click_on "Back"
  end

  test "updating a Produto imagem" do
    visit produto_imagems_url
    click_on "Edit", match: :first

    fill_in "Descricao", with: @produto_imagem.descricao
    fill_in "Titulo", with: @produto_imagem.titulo
    click_on "Update Produto imagem"

    assert_text "Produto imagem was successfully updated"
    click_on "Back"
  end

  test "destroying a Produto imagem" do
    visit produto_imagems_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Produto imagem was successfully destroyed"
  end
end
