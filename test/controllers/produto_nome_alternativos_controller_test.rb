require 'test_helper'

class ProdutoNomeAlternativosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @produto_nome_alternativo = produto_nome_alternativos(:one)
  end

  test "should get index" do
    get produto_nome_alternativos_url
    assert_response :success
  end

  test "should get new" do
    get new_produto_nome_alternativo_url
    assert_response :success
  end

  test "should create produto_nome_alternativo" do
    assert_difference('ProdutoNomeAlternativo.count') do
      post produto_nome_alternativos_url, params: { produto_nome_alternativo: { nome_alternativo: @produto_nome_alternativo.nome_alternativo, produto_id: @produto_nome_alternativo.produto_id } }
    end

    assert_redirected_to produto_nome_alternativo_url(ProdutoNomeAlternativo.last)
  end

  test "should show produto_nome_alternativo" do
    get produto_nome_alternativo_url(@produto_nome_alternativo)
    assert_response :success
  end

  test "should get edit" do
    get edit_produto_nome_alternativo_url(@produto_nome_alternativo)
    assert_response :success
  end

  test "should update produto_nome_alternativo" do
    patch produto_nome_alternativo_url(@produto_nome_alternativo), params: { produto_nome_alternativo: { nome_alternativo: @produto_nome_alternativo.nome_alternativo, produto_id: @produto_nome_alternativo.produto_id } }
    assert_redirected_to produto_nome_alternativo_url(@produto_nome_alternativo)
  end

  test "should destroy produto_nome_alternativo" do
    assert_difference('ProdutoNomeAlternativo.count', -1) do
      delete produto_nome_alternativo_url(@produto_nome_alternativo)
    end

    assert_redirected_to produto_nome_alternativos_url
  end
end
