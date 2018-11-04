require 'test_helper'

class ProdutoPossuiComponentesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @produto_possui_componente = produto_possui_componentes(:one)
  end

  test "should get index" do
    get produto_possui_componentes_url
    assert_response :success
  end

  test "should get new" do
    get new_produto_possui_componente_url
    assert_response :success
  end

  test "should create produto_possui_componente" do
    assert_difference('ProdutoPossuiComponente.count') do
      post produto_possui_componentes_url, params: { produto_possui_componente: { componente_id: @produto_possui_componente.componente_id, produto_id: @produto_possui_componente.produto_id } }
    end

    assert_redirected_to produto_possui_componente_url(ProdutoPossuiComponente.last)
  end

  test "should show produto_possui_componente" do
    get produto_possui_componente_url(@produto_possui_componente)
    assert_response :success
  end

  test "should get edit" do
    get edit_produto_possui_componente_url(@produto_possui_componente)
    assert_response :success
  end

  test "should update produto_possui_componente" do
    patch produto_possui_componente_url(@produto_possui_componente), params: { produto_possui_componente: { componente_id: @produto_possui_componente.componente_id, produto_id: @produto_possui_componente.produto_id } }
    assert_redirected_to produto_possui_componente_url(@produto_possui_componente)
  end

  test "should destroy produto_possui_componente" do
    assert_difference('ProdutoPossuiComponente.count', -1) do
      delete produto_possui_componente_url(@produto_possui_componente)
    end

    assert_redirected_to produto_possui_componentes_url
  end
end
