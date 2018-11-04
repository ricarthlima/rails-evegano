require "application_system_test_case"

class MarcasTest < ApplicationSystemTestCase
  setup do
    @marca = marcas(:one)
  end

  test "visiting the index" do
    visit marcas_url
    assert_selector "h1", text: "Marcas"
  end

  test "creating a Marca" do
    visit marcas_url
    click_on "New Marca"

    fill_in "Class Vegan", with: @marca.class_vegan
    fill_in "Descricao", with: @marca.descricao
    fill_in "Justificativa", with: @marca.justificativa
    fill_in "Nome", with: @marca.nome
    click_on "Create Marca"

    assert_text "Marca was successfully created"
    click_on "Back"
  end

  test "updating a Marca" do
    visit marcas_url
    click_on "Edit", match: :first

    fill_in "Class Vegan", with: @marca.class_vegan
    fill_in "Descricao", with: @marca.descricao
    fill_in "Justificativa", with: @marca.justificativa
    fill_in "Nome", with: @marca.nome
    click_on "Update Marca"

    assert_text "Marca was successfully updated"
    click_on "Back"
  end

  test "destroying a Marca" do
    visit marcas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Marca was successfully destroyed"
  end
end
