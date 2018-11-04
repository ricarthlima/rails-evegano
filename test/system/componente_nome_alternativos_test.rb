require "application_system_test_case"

class ComponenteNomeAlternativosTest < ApplicationSystemTestCase
  setup do
    @componente_nome_alternativo = componente_nome_alternativos(:one)
  end

  test "visiting the index" do
    visit componente_nome_alternativos_url
    assert_selector "h1", text: "Componente Nome Alternativos"
  end

  test "creating a Componente nome alternativo" do
    visit componente_nome_alternativos_url
    click_on "New Componente Nome Alternativo"

    fill_in "Componente", with: @componente_nome_alternativo.componente_id
    fill_in "Nome Alternativo", with: @componente_nome_alternativo.nome_alternativo
    click_on "Create Componente nome alternativo"

    assert_text "Componente nome alternativo was successfully created"
    click_on "Back"
  end

  test "updating a Componente nome alternativo" do
    visit componente_nome_alternativos_url
    click_on "Edit", match: :first

    fill_in "Componente", with: @componente_nome_alternativo.componente_id
    fill_in "Nome Alternativo", with: @componente_nome_alternativo.nome_alternativo
    click_on "Update Componente nome alternativo"

    assert_text "Componente nome alternativo was successfully updated"
    click_on "Back"
  end

  test "destroying a Componente nome alternativo" do
    visit componente_nome_alternativos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Componente nome alternativo was successfully destroyed"
  end
end
