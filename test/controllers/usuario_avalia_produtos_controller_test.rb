require 'test_helper'

class UsuarioAvaliaProdutosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usuario_avalia_produto = usuario_avalia_produtos(:one)
  end

  test "should get index" do
    get usuario_avalia_produtos_url
    assert_response :success
  end

  test "should get new" do
    get new_usuario_avalia_produto_url
    assert_response :success
  end

  test "should create usuario_avalia_produto" do
    assert_difference('UsuarioAvaliaProduto.count') do
      post usuario_avalia_produtos_url, params: { usuario_avalia_produto: { comentario: @usuario_avalia_produto.comentario, dt_avaliacao: @usuario_avalia_produto.dt_avaliacao, estrelas: @usuario_avalia_produto.estrelas, produto_id: @usuario_avalia_produto.produto_id, usuario_id: @usuario_avalia_produto.usuario_id } }
    end

    assert_redirected_to usuario_avalia_produto_url(UsuarioAvaliaProduto.last)
  end

  test "should show usuario_avalia_produto" do
    get usuario_avalia_produto_url(@usuario_avalia_produto)
    assert_response :success
  end

  test "should get edit" do
    get edit_usuario_avalia_produto_url(@usuario_avalia_produto)
    assert_response :success
  end

  test "should update usuario_avalia_produto" do
    patch usuario_avalia_produto_url(@usuario_avalia_produto), params: { usuario_avalia_produto: { comentario: @usuario_avalia_produto.comentario, dt_avaliacao: @usuario_avalia_produto.dt_avaliacao, estrelas: @usuario_avalia_produto.estrelas, produto_id: @usuario_avalia_produto.produto_id, usuario_id: @usuario_avalia_produto.usuario_id } }
    assert_redirected_to usuario_avalia_produto_url(@usuario_avalia_produto)
  end

  test "should destroy usuario_avalia_produto" do
    assert_difference('UsuarioAvaliaProduto.count', -1) do
      delete usuario_avalia_produto_url(@usuario_avalia_produto)
    end

    assert_redirected_to usuario_avalia_produtos_url
  end
end
