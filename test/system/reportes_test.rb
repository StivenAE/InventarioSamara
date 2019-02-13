require "application_system_test_case"

class ReportesTest < ApplicationSystemTestCase
  setup do
    @reporte = reportes(:one)
  end

  test "visiting the index" do
    visit reportes_url
    assert_selector "h1", text: "Reportes"
  end

  test "creating a Reporte" do
    visit reportes_url
    click_on "New Reporte"

    fill_in "Area Funcionamiento", with: @reporte.area_funcionamiento
    fill_in "Correo", with: @reporte.correo
    fill_in "Descripcion Problema", with: @reporte.descripcion_problema
    fill_in "Equipo", with: @reporte.equipo
    fill_in "Fecha", with: @reporte.fecha
    fill_in "Intervencion", with: @reporte.intervencion
    click_on "Create Reporte"

    assert_text "Reporte was successfully created"
    click_on "Back"
  end

  test "updating a Reporte" do
    visit reportes_url
    click_on "Edit", match: :first

    fill_in "Area Funcionamiento", with: @reporte.area_funcionamiento
    fill_in "Correo", with: @reporte.correo
    fill_in "Descripcion Problema", with: @reporte.descripcion_problema
    fill_in "Equipo", with: @reporte.equipo
    fill_in "Fecha", with: @reporte.fecha
    fill_in "Intervencion", with: @reporte.intervencion
    click_on "Update Reporte"

    assert_text "Reporte was successfully updated"
    click_on "Back"
  end

  test "destroying a Reporte" do
    visit reportes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reporte was successfully destroyed"
  end
end
