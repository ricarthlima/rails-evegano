require 'test_helper'

class ProdutoImagemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @produto_imagem = produto_imagems(:one)
  end

  test "should get index" do
    get produto_imagems_url
    assert_response :success
  end

  test "should get new" do
    get new_produto_imagem_url
    assert_response :success
  end

  test "should create produto_imagem" do
    assert_difference('ProdutoImagem.count') do
      post produto_imagems_url, params: { produto_imagem: { descricao: @produto_imagem.descricao, titulo: @produto_imagem.titulo } }
    end

    assert_redirected_to produto_imagem_url(ProdutoImagem.last)
  end

  test "should show produto_imagem" do
    get produto_imagem_url(@produto_imagem)
    assert_response :success
  end

  test "should get edit" do
    get edit_produto_imagem_url(@produto_imagem)
    assert_response :success
  end

  test "should update produto_imagem" do
    patch produto_imagem_url(@produto_imagem), params: { produto_imagem: { descricao: @produto_imagem.descricao, titulo: @produto_imagem.titulo } }
    assert_redirected_to produto_imagem_url(@produto_imagem)
  end

  test "should destroy produto_imagem" do
    assert_difference('ProdutoImagem.count', -1) do
      delete produto_imagem_url(@produto_imagem)
    end

    assert_redirected_to produto_imagems_url
  end
end
