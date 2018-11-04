require 'test_helper'

class UsuarioBuscaProdutosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usuario_busca_produto = usuario_busca_produtos(:one)
  end

  test "should get index" do
    get usuario_busca_produtos_url
    assert_response :success
  end

  test "should get new" do
    get new_usuario_busca_produto_url
    assert_response :success
  end

  test "should create usuario_busca_produto" do
    assert_difference('UsuarioBuscaProduto.count') do
      post usuario_busca_produtos_url, params: { usuario_busca_produto: { dt_busca: @usuario_busca_produto.dt_busca, produto_id: @usuario_busca_produto.produto_id, usuario_id: @usuario_busca_produto.usuario_id } }
    end

    assert_redirected_to usuario_busca_produto_url(UsuarioBuscaProduto.last)
  end

  test "should show usuario_busca_produto" do
    get usuario_busca_produto_url(@usuario_busca_produto)
    assert_response :success
  end

  test "should get edit" do
    get edit_usuario_busca_produto_url(@usuario_busca_produto)
    assert_response :success
  end

  test "should update usuario_busca_produto" do
    patch usuario_busca_produto_url(@usuario_busca_produto), params: { usuario_busca_produto: { dt_busca: @usuario_busca_produto.dt_busca, produto_id: @usuario_busca_produto.produto_id, usuario_id: @usuario_busca_produto.usuario_id } }
    assert_redirected_to usuario_busca_produto_url(@usuario_busca_produto)
  end

  test "should destroy usuario_busca_produto" do
    assert_difference('UsuarioBuscaProduto.count', -1) do
      delete usuario_busca_produto_url(@usuario_busca_produto)
    end

    assert_redirected_to usuario_busca_produtos_url
  end
end
