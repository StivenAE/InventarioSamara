require "application_system_test_case"

class HojavidasTest < ApplicationSystemTestCase
  setup do
    @hojavida = hojavidas(:one)
  end

  test "visiting the index" do
    visit hojavidas_url
    assert_selector "h1", text: "Hojavidas"
  end

  test "creating a Hojavida" do
    visit hojavidas_url
    click_on "New Hojavida"

    fill_in "Area Funcionamiento", with: @hojavida.area_funcionamiento
    fill_in "Descripcion", with: @hojavida.descripcion
    fill_in "Fecha Compra", with: @hojavida.fecha_compra
    fill_in "Garantia", with: @hojavida.garantia
    fill_in "Marca", with: @hojavida.marca
    fill_in "Modelo", with: @hojavida.modelo
    fill_in "Nombre", with: @hojavida.nombre
    fill_in "Pieza", with: @hojavida.pieza
    fill_in "Precauciones", with: @hojavida.precauciones
    fill_in "Proveedor", with: @hojavida.proveedor
    fill_in "Serial", with: @hojavida.serial
    fill_in "Tipo", with: @hojavida.tipo
    click_on "Create Hojavida"

    assert_text "Hojavida was successfully created"
    click_on "Back"
  end

  test "updating a Hojavida" do
    visit hojavidas_url
    click_on "Edit", match: :first

    fill_in "Area Funcionamiento", with: @hojavida.area_funcionamiento
    fill_in "Descripcion", with: @hojavida.descripcion
    fill_in "Fecha Compra", with: @hojavida.fecha_compra
    fill_in "Garantia", with: @hojavida.garantia
    fill_in "Marca", with: @hojavida.marca
    fill_in "Modelo", with: @hojavida.modelo
    fill_in "Nombre", with: @hojavida.nombre
    fill_in "Pieza", with: @hojavida.pieza
    fill_in "Precauciones", with: @hojavida.precauciones
    fill_in "Proveedor", with: @hojavida.proveedor
    fill_in "Serial", with: @hojavida.serial
    fill_in "Tipo", with: @hojavida.tipo
    click_on "Update Hojavida"

    assert_text "Hojavida was successfully updated"
    click_on "Back"
  end

  test "destroying a Hojavida" do
    visit hojavidas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hojavida was successfully destroyed"
  end
end
