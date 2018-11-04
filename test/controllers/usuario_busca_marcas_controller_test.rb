require 'test_helper'

class UsuarioBuscaMarcasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usuario_busca_marca = usuario_busca_marcas(:one)
  end

  test "should get index" do
    get usuario_busca_marcas_url
    assert_response :success
  end

  test "should get new" do
    get new_usuario_busca_marca_url
    assert_response :success
  end

  test "should create usuario_busca_marca" do
    assert_difference('UsuarioBuscaMarca.count') do
      post usuario_busca_marcas_url, params: { usuario_busca_marca: { dt_busca: @usuario_busca_marca.dt_busca, marca_id: @usuario_busca_marca.marca_id, usuario_id: @usuario_busca_marca.usuario_id } }
    end

    assert_redirected_to usuario_busca_marca_url(UsuarioBuscaMarca.last)
  end

  test "should show usuario_busca_marca" do
    get usuario_busca_marca_url(@usuario_busca_marca)
    assert_response :success
  end

  test "should get edit" do
    get edit_usuario_busca_marca_url(@usuario_busca_marca)
    assert_response :success
  end

  test "should update usuario_busca_marca" do
    patch usuario_busca_marca_url(@usuario_busca_marca), params: { usuario_busca_marca: { dt_busca: @usuario_busca_marca.dt_busca, marca_id: @usuario_busca_marca.marca_id, usuario_id: @usuario_busca_marca.usuario_id } }
    assert_redirected_to usuario_busca_marca_url(@usuario_busca_marca)
  end

  test "should destroy usuario_busca_marca" do
    assert_difference('UsuarioBuscaMarca.count', -1) do
      delete usuario_busca_marca_url(@usuario_busca_marca)
    end

    assert_redirected_to usuario_busca_marcas_url
  end
end
