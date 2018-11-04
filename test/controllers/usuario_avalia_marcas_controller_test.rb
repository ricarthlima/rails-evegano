require 'test_helper'

class UsuarioAvaliaMarcasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usuario_avalia_marca = usuario_avalia_marcas(:one)
  end

  test "should get index" do
    get usuario_avalia_marcas_url
    assert_response :success
  end

  test "should get new" do
    get new_usuario_avalia_marca_url
    assert_response :success
  end

  test "should create usuario_avalia_marca" do
    assert_difference('UsuarioAvaliaMarca.count') do
      post usuario_avalia_marcas_url, params: { usuario_avalia_marca: { comentario: @usuario_avalia_marca.comentario, dt_avaliacao: @usuario_avalia_marca.dt_avaliacao, estrelas: @usuario_avalia_marca.estrelas, marca_id: @usuario_avalia_marca.marca_id, usuario_id: @usuario_avalia_marca.usuario_id } }
    end

    assert_redirected_to usuario_avalia_marca_url(UsuarioAvaliaMarca.last)
  end

  test "should show usuario_avalia_marca" do
    get usuario_avalia_marca_url(@usuario_avalia_marca)
    assert_response :success
  end

  test "should get edit" do
    get edit_usuario_avalia_marca_url(@usuario_avalia_marca)
    assert_response :success
  end

  test "should update usuario_avalia_marca" do
    patch usuario_avalia_marca_url(@usuario_avalia_marca), params: { usuario_avalia_marca: { comentario: @usuario_avalia_marca.comentario, dt_avaliacao: @usuario_avalia_marca.dt_avaliacao, estrelas: @usuario_avalia_marca.estrelas, marca_id: @usuario_avalia_marca.marca_id, usuario_id: @usuario_avalia_marca.usuario_id } }
    assert_redirected_to usuario_avalia_marca_url(@usuario_avalia_marca)
  end

  test "should destroy usuario_avalia_marca" do
    assert_difference('UsuarioAvaliaMarca.count', -1) do
      delete usuario_avalia_marca_url(@usuario_avalia_marca)
    end

    assert_redirected_to usuario_avalia_marcas_url
  end
end
