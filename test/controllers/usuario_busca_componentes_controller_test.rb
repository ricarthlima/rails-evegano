require 'test_helper'

class UsuarioBuscaComponentesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usuario_busca_componente = usuario_busca_componentes(:one)
  end

  test "should get index" do
    get usuario_busca_componentes_url
    assert_response :success
  end

  test "should get new" do
    get new_usuario_busca_componente_url
    assert_response :success
  end

  test "should create usuario_busca_componente" do
    assert_difference('UsuarioBuscaComponente.count') do
      post usuario_busca_componentes_url, params: { usuario_busca_componente: { componente_id: @usuario_busca_componente.componente_id, dt_busca: @usuario_busca_componente.dt_busca, usuario_id: @usuario_busca_componente.usuario_id } }
    end

    assert_redirected_to usuario_busca_componente_url(UsuarioBuscaComponente.last)
  end

  test "should show usuario_busca_componente" do
    get usuario_busca_componente_url(@usuario_busca_componente)
    assert_response :success
  end

  test "should get edit" do
    get edit_usuario_busca_componente_url(@usuario_busca_componente)
    assert_response :success
  end

  test "should update usuario_busca_componente" do
    patch usuario_busca_componente_url(@usuario_busca_componente), params: { usuario_busca_componente: { componente_id: @usuario_busca_componente.componente_id, dt_busca: @usuario_busca_componente.dt_busca, usuario_id: @usuario_busca_componente.usuario_id } }
    assert_redirected_to usuario_busca_componente_url(@usuario_busca_componente)
  end

  test "should destroy usuario_busca_componente" do
    assert_difference('UsuarioBuscaComponente.count', -1) do
      delete usuario_busca_componente_url(@usuario_busca_componente)
    end

    assert_redirected_to usuario_busca_componentes_url
  end
end
