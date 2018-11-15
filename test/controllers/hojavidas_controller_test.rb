require 'test_helper'

class HojavidasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hojavida = hojavidas(:one)
  end

  test "should get index" do
    get hojavidas_url
    assert_response :success
  end

  test "should get new" do
    get new_hojavida_url
    assert_response :success
  end

  test "should create hojavida" do
    assert_difference('Hojavida.count') do
      post hojavidas_url, params: { hojavida: { area_funcionamiento: @hojavida.area_funcionamiento, descripcion: @hojavida.descripcion, fecha_compra: @hojavida.fecha_compra, garantia: @hojavida.garantia, marca: @hojavida.marca, modelo: @hojavida.modelo, nombre: @hojavida.nombre, pieza: @hojavida.pieza, precauciones: @hojavida.precauciones, proveedor: @hojavida.proveedor, serial: @hojavida.serial, tipo: @hojavida.tipo } }
    end

    assert_redirected_to hojavida_url(Hojavida.last)
  end

  test "should show hojavida" do
    get hojavida_url(@hojavida)
    assert_response :success
  end

  test "should get edit" do
    get edit_hojavida_url(@hojavida)
    assert_response :success
  end

  test "should update hojavida" do
    patch hojavida_url(@hojavida), params: { hojavida: { area_funcionamiento: @hojavida.area_funcionamiento, descripcion: @hojavida.descripcion, fecha_compra: @hojavida.fecha_compra, garantia: @hojavida.garantia, marca: @hojavida.marca, modelo: @hojavida.modelo, nombre: @hojavida.nombre, pieza: @hojavida.pieza, precauciones: @hojavida.precauciones, proveedor: @hojavida.proveedor, serial: @hojavida.serial, tipo: @hojavida.tipo } }
    assert_redirected_to hojavida_url(@hojavida)
  end

  test "should destroy hojavida" do
    assert_difference('Hojavida.count', -1) do
      delete hojavida_url(@hojavida)
    end

    assert_redirected_to hojavidas_url
  end
end
