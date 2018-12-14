require "application_system_test_case"

class ClienteremisTest < ApplicationSystemTestCase
  setup do
    @clienteremi = clienteremis(:one)
  end

  test "visiting the index" do
    visit clienteremis_url
    assert_selector "h1", text: "Clienteremis"
  end

  test "creating a Clienteremi" do
    visit clienteremis_url
    click_on "New Clienteremi"

    fill_in "Apellidos", with: @clienteremi.apellidos
    fill_in "Ciudad", with: @clienteremi.ciudad
    fill_in "Direccion", with: @clienteremi.direccion
    fill_in "Empresa", with: @clienteremi.empresa
    fill_in "Forma Pago", with: @clienteremi.forma_pago
    fill_in "Nit", with: @clienteremi.nit
    fill_in "Nombre", with: @clienteremi.nombre
    fill_in "Pedido", with: @clienteremi.pedido
    fill_in "Telefono", with: @clienteremi.telefono
    click_on "Create Clienteremi"

    assert_text "Clienteremi was successfully created"
    click_on "Back"
  end

  test "updating a Clienteremi" do
    visit clienteremis_url
    click_on "Edit", match: :first

    fill_in "Apellidos", with: @clienteremi.apellidos
    fill_in "Ciudad", with: @clienteremi.ciudad
    fill_in "Direccion", with: @clienteremi.direccion
    fill_in "Empresa", with: @clienteremi.empresa
    fill_in "Forma Pago", with: @clienteremi.forma_pago
    fill_in "Nit", with: @clienteremi.nit
    fill_in "Nombre", with: @clienteremi.nombre
    fill_in "Pedido", with: @clienteremi.pedido
    fill_in "Telefono", with: @clienteremi.telefono
    click_on "Update Clienteremi"

    assert_text "Clienteremi was successfully updated"
    click_on "Back"
  end

  test "destroying a Clienteremi" do
    visit clienteremis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Clienteremi was successfully destroyed"
  end
end
