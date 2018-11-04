require "application_system_test_case"

class ComponentesTest < ApplicationSystemTestCase
  setup do
    @componente = componentes(:one)
  end

  test "visiting the index" do
    visit componentes_url
    assert_selector "h1", text: "Componentes"
  end

  test "creating a Componente" do
    visit componentes_url
    click_on "New Componente"

    fill_in "Class Vegan", with: @componente.class_vegan
    fill_in "Cod Ins", with: @componente.cod_INS
    fill_in "Cod Europeu", with: @componente.cod_europeu
    fill_in "Descricao", with: @componente.descricao
    fill_in "Justificativa", with: @componente.justificativa
    fill_in "Nome", with: @componente.nome
    click_on "Create Componente"

    assert_text "Componente was successfully created"
    click_on "Back"
  end

  test "updating a Componente" do
    visit componentes_url
    click_on "Edit", match: :first

    fill_in "Class Vegan", with: @componente.class_vegan
    fill_in "Cod Ins", with: @componente.cod_INS
    fill_in "Cod Europeu", with: @componente.cod_europeu
    fill_in "Descricao", with: @componente.descricao
    fill_in "Justificativa", with: @componente.justificativa
    fill_in "Nome", with: @componente.nome
    click_on "Update Componente"

    assert_text "Componente was successfully updated"
    click_on "Back"
  end

  test "destroying a Componente" do
    visit componentes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Componente was successfully destroyed"
  end
end
