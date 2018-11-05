require 'test_helper'

class MarcaNomeAlternativosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @marca_nome_alternativo = marca_nome_alternativos(:one)
  end

  test "should get index" do
    get marca_nome_alternativos_url
    assert_response :success
  end

  test "should get new" do
    get new_marca_nome_alternativo_url
    assert_response :success
  end

  test "should create marca_nome_alternativo" do
    assert_difference('MarcaNomeAlternativo.count') do
      post marca_nome_alternativos_url, params: { marca_nome_alternativo: { marca_id: @marca_nome_alternativo.marca_id, nome: @marca_nome_alternativo.nome } }
    end

    assert_redirected_to marca_nome_alternativo_url(MarcaNomeAlternativo.last)
  end

  test "should show marca_nome_alternativo" do
    get marca_nome_alternativo_url(@marca_nome_alternativo)
    assert_response :success
  end

  test "should get edit" do
    get edit_marca_nome_alternativo_url(@marca_nome_alternativo)
    assert_response :success
  end

  test "should update marca_nome_alternativo" do
    patch marca_nome_alternativo_url(@marca_nome_alternativo), params: { marca_nome_alternativo: { marca_id: @marca_nome_alternativo.marca_id, nome: @marca_nome_alternativo.nome } }
    assert_redirected_to marca_nome_alternativo_url(@marca_nome_alternativo)
  end

  test "should destroy marca_nome_alternativo" do
    assert_difference('MarcaNomeAlternativo.count', -1) do
      delete marca_nome_alternativo_url(@marca_nome_alternativo)
    end

    assert_redirected_to marca_nome_alternativos_url
  end
end
