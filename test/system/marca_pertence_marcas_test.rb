require "application_system_test_case"

class MarcaPertenceMarcasTest < ApplicationSystemTestCase
  setup do
    @marca_pertence_marca = marca_pertence_marcas(:one)
  end

  test "visiting the index" do
    visit marca_pertence_marcas_url
    assert_selector "h1", text: "Marca Pertence Marcas"
  end

  test "creating a Marca pertence marca" do
    visit marca_pertence_marcas_url
    click_on "New Marca Pertence Marca"

    fill_in "Marca", with: @marca_pertence_marca.marca_id
    click_on "Create Marca pertence marca"

    assert_text "Marca pertence marca was successfully created"
    click_on "Back"
  end

  test "updating a Marca pertence marca" do
    visit marca_pertence_marcas_url
    click_on "Edit", match: :first

    fill_in "Marca", with: @marca_pertence_marca.marca_id
    click_on "Update Marca pertence marca"

    assert_text "Marca pertence marca was successfully updated"
    click_on "Back"
  end

  test "destroying a Marca pertence marca" do
    visit marca_pertence_marcas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Marca pertence marca was successfully destroyed"
  end
end
