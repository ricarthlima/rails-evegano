require "application_system_test_case"

class ProdutoPossuiComponentesTest < ApplicationSystemTestCase
  setup do
    @produto_possui_componente = produto_possui_componentes(:one)
  end

  test "visiting the index" do
    visit produto_possui_componentes_url
    assert_selector "h1", text: "Produto Possui Componentes"
  end

  test "creating a Produto possui componente" do
    visit produto_possui_componentes_url
    click_on "New Produto Possui Componente"

    fill_in "Componente", with: @produto_possui_componente.componente_id
    fill_in "Produto", with: @produto_possui_componente.produto_id
    click_on "Create Produto possui componente"

    assert_text "Produto possui componente was successfully created"
    click_on "Back"
  end

  test "updating a Produto possui componente" do
    visit produto_possui_componentes_url
    click_on "Edit", match: :first

    fill_in "Componente", with: @produto_possui_componente.componente_id
    fill_in "Produto", with: @produto_possui_componente.produto_id
    click_on "Update Produto possui componente"

    assert_text "Produto possui componente was successfully updated"
    click_on "Back"
  end

  test "destroying a Produto possui componente" do
    visit produto_possui_componentes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Produto possui componente was successfully destroyed"
  end
end
