require "application_system_test_case"

class CheckatrisTest < ApplicationSystemTestCase
  setup do
    @checkatri = checkatris(:one)
  end

  test "visiting the index" do
    visit checkatris_url
    assert_selector "h1", text: "Checkatris"
  end

  test "creating a Checkatri" do
    visit checkatris_url
    click_on "New Checkatri"

    fill_in "Descripcion", with: @checkatri.descripcion
    fill_in "Referencia", with: @checkatri.referencia
    click_on "Create Checkatri"

    assert_text "Checkatri was successfully created"
    click_on "Back"
  end

  test "updating a Checkatri" do
    visit checkatris_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @checkatri.descripcion
    fill_in "Referencia", with: @checkatri.referencia
    click_on "Update Checkatri"

    assert_text "Checkatri was successfully updated"
    click_on "Back"
  end

  test "destroying a Checkatri" do
    visit checkatris_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Checkatri was successfully destroyed"
  end
end
