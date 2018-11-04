require 'test_helper'

class MarcaPertenceMarcasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @marca_pertence_marca = marca_pertence_marcas(:one)
  end

  test "should get index" do
    get marca_pertence_marcas_url
    assert_response :success
  end

  test "should get new" do
    get new_marca_pertence_marca_url
    assert_response :success
  end

  test "should create marca_pertence_marca" do
    assert_difference('MarcaPertenceMarca.count') do
      post marca_pertence_marcas_url, params: { marca_pertence_marca: { marca_id: @marca_pertence_marca.marca_id } }
    end

    assert_redirected_to marca_pertence_marca_url(MarcaPertenceMarca.last)
  end

  test "should show marca_pertence_marca" do
    get marca_pertence_marca_url(@marca_pertence_marca)
    assert_response :success
  end

  test "should get edit" do
    get edit_marca_pertence_marca_url(@marca_pertence_marca)
    assert_response :success
  end

  test "should update marca_pertence_marca" do
    patch marca_pertence_marca_url(@marca_pertence_marca), params: { marca_pertence_marca: { marca_id: @marca_pertence_marca.marca_id } }
    assert_redirected_to marca_pertence_marca_url(@marca_pertence_marca)
  end

  test "should destroy marca_pertence_marca" do
    assert_difference('MarcaPertenceMarca.count', -1) do
      delete marca_pertence_marca_url(@marca_pertence_marca)
    end

    assert_redirected_to marca_pertence_marcas_url
  end
end
