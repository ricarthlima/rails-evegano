require "application_system_test_case"

class MarcaNomeAlternativosTest < ApplicationSystemTestCase
  setup do
    @marca_nome_alternativo = marca_nome_alternativos(:one)
  end

  test "visiting the index" do
    visit marca_nome_alternativos_url
    assert_selector "h1", text: "Marca Nome Alternativos"
  end

  test "creating a Marca nome alternativo" do
    visit marca_nome_alternativos_url
    click_on "New Marca Nome Alternativo"

    fill_in "Marca", with: @marca_nome_alternativo.marca_id
    fill_in "Nome", with: @marca_nome_alternativo.nome
    click_on "Create Marca nome alternativo"

    assert_text "Marca nome alternativo was successfully created"
    click_on "Back"
  end

  test "updating a Marca nome alternativo" do
    visit marca_nome_alternativos_url
    click_on "Edit", match: :first

    fill_in "Marca", with: @marca_nome_alternativo.marca_id
    fill_in "Nome", with: @marca_nome_alternativo.nome
    click_on "Update Marca nome alternativo"

    assert_text "Marca nome alternativo was successfully updated"
    click_on "Back"
  end

  test "destroying a Marca nome alternativo" do
    visit marca_nome_alternativos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Marca nome alternativo was successfully destroyed"
  end
end
