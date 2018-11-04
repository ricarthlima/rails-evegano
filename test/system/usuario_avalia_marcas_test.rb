require "application_system_test_case"

class UsuarioAvaliaMarcasTest < ApplicationSystemTestCase
  setup do
    @usuario_avalia_marca = usuario_avalia_marcas(:one)
  end

  test "visiting the index" do
    visit usuario_avalia_marcas_url
    assert_selector "h1", text: "Usuario Avalia Marcas"
  end

  test "creating a Usuario avalia marca" do
    visit usuario_avalia_marcas_url
    click_on "New Usuario Avalia Marca"

    fill_in "Comentario", with: @usuario_avalia_marca.comentario
    fill_in "Dt Avaliacao", with: @usuario_avalia_marca.dt_avaliacao
    fill_in "Estrelas", with: @usuario_avalia_marca.estrelas
    fill_in "Marca", with: @usuario_avalia_marca.marca_id
    fill_in "Usuario", with: @usuario_avalia_marca.usuario_id
    click_on "Create Usuario avalia marca"

    assert_text "Usuario avalia marca was successfully created"
    click_on "Back"
  end

  test "updating a Usuario avalia marca" do
    visit usuario_avalia_marcas_url
    click_on "Edit", match: :first

    fill_in "Comentario", with: @usuario_avalia_marca.comentario
    fill_in "Dt Avaliacao", with: @usuario_avalia_marca.dt_avaliacao
    fill_in "Estrelas", with: @usuario_avalia_marca.estrelas
    fill_in "Marca", with: @usuario_avalia_marca.marca_id
    fill_in "Usuario", with: @usuario_avalia_marca.usuario_id
    click_on "Update Usuario avalia marca"

    assert_text "Usuario avalia marca was successfully updated"
    click_on "Back"
  end

  test "destroying a Usuario avalia marca" do
    visit usuario_avalia_marcas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Usuario avalia marca was successfully destroyed"
  end
end
