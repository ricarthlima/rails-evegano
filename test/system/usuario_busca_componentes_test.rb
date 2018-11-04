require "application_system_test_case"

class UsuarioBuscaComponentesTest < ApplicationSystemTestCase
  setup do
    @usuario_busca_componente = usuario_busca_componentes(:one)
  end

  test "visiting the index" do
    visit usuario_busca_componentes_url
    assert_selector "h1", text: "Usuario Busca Componentes"
  end

  test "creating a Usuario busca componente" do
    visit usuario_busca_componentes_url
    click_on "New Usuario Busca Componente"

    fill_in "Componente", with: @usuario_busca_componente.componente_id
    fill_in "Dt Busca", with: @usuario_busca_componente.dt_busca
    fill_in "Usuario", with: @usuario_busca_componente.usuario_id
    click_on "Create Usuario busca componente"

    assert_text "Usuario busca componente was successfully created"
    click_on "Back"
  end

  test "updating a Usuario busca componente" do
    visit usuario_busca_componentes_url
    click_on "Edit", match: :first

    fill_in "Componente", with: @usuario_busca_componente.componente_id
    fill_in "Dt Busca", with: @usuario_busca_componente.dt_busca
    fill_in "Usuario", with: @usuario_busca_componente.usuario_id
    click_on "Update Usuario busca componente"

    assert_text "Usuario busca componente was successfully updated"
    click_on "Back"
  end

  test "destroying a Usuario busca componente" do
    visit usuario_busca_componentes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Usuario busca componente was successfully destroyed"
  end
end
