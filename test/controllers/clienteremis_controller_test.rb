require 'test_helper'

class ClienteremisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @clienteremi = clienteremis(:one)
  end

  test "should get index" do
    get clienteremis_url
    assert_response :success
  end

  test "should get new" do
    get new_clienteremi_url
    assert_response :success
  end

  test "should create clienteremi" do
    assert_difference('Clienteremi.count') do
      post clienteremis_url, params: { clienteremi: { apellidos: @clienteremi.apellidos, ciudad: @clienteremi.ciudad, direccion: @clienteremi.direccion, empresa: @clienteremi.empresa, forma_pago: @clienteremi.forma_pago, nit: @clienteremi.nit, nombre: @clienteremi.nombre, pedido: @clienteremi.pedido, telefono: @clienteremi.telefono } }
    end

    assert_redirected_to clienteremi_url(Clienteremi.last)
  end

  test "should show clienteremi" do
    get clienteremi_url(@clienteremi)
    assert_response :success
  end

  test "should get edit" do
    get edit_clienteremi_url(@clienteremi)
    assert_response :success
  end

  test "should update clienteremi" do
    patch clienteremi_url(@clienteremi), params: { clienteremi: { apellidos: @clienteremi.apellidos, ciudad: @clienteremi.ciudad, direccion: @clienteremi.direccion, empresa: @clienteremi.empresa, forma_pago: @clienteremi.forma_pago, nit: @clienteremi.nit, nombre: @clienteremi.nombre, pedido: @clienteremi.pedido, telefono: @clienteremi.telefono } }
    assert_redirected_to clienteremi_url(@clienteremi)
  end

  test "should destroy clienteremi" do
    assert_difference('Clienteremi.count', -1) do
      delete clienteremi_url(@clienteremi)
    end

    assert_redirected_to clienteremis_url
  end
end
