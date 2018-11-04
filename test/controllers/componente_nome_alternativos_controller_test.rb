require 'test_helper'

class ComponenteNomeAlternativosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @componente_nome_alternativo = componente_nome_alternativos(:one)
  end

  test "should get index" do
    get componente_nome_alternativos_url
    assert_response :success
  end

  test "should get new" do
    get new_componente_nome_alternativo_url
    assert_response :success
  end

  test "should create componente_nome_alternativo" do
    assert_difference('ComponenteNomeAlternativo.count') do
      post componente_nome_alternativos_url, params: { componente_nome_alternativo: { componente_id: @componente_nome_alternativo.componente_id, nome_alternativo: @componente_nome_alternativo.nome_alternativo } }
    end

    assert_redirected_to componente_nome_alternativo_url(ComponenteNomeAlternativo.last)
  end

  test "should show componente_nome_alternativo" do
    get componente_nome_alternativo_url(@componente_nome_alternativo)
    assert_response :success
  end

  test "should get edit" do
    get edit_componente_nome_alternativo_url(@componente_nome_alternativo)
    assert_response :success
  end

  test "should update componente_nome_alternativo" do
    patch componente_nome_alternativo_url(@componente_nome_alternativo), params: { componente_nome_alternativo: { componente_id: @componente_nome_alternativo.componente_id, nome_alternativo: @componente_nome_alternativo.nome_alternativo } }
    assert_redirected_to componente_nome_alternativo_url(@componente_nome_alternativo)
  end

  test "should destroy componente_nome_alternativo" do
    assert_difference('ComponenteNomeAlternativo.count', -1) do
      delete componente_nome_alternativo_url(@componente_nome_alternativo)
    end

    assert_redirected_to componente_nome_alternativos_url
  end
end
