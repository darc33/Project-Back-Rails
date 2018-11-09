require "application_system_test_case"

class ViasEngativasTest < ApplicationSystemTestCase
  setup do
    @vias_engativa = vias_engativas(:one)
  end

  test "visiting the index" do
    visit vias_engativas_url
    assert_selector "h1", text: "Vias Engativas"
  end

  test "creating a Vias engativa" do
    visit vias_engativas_url
    click_on "New Vias Engativa"

    fill_in "Mviccalzadad", with: @vias_engativa.mviccalzadad
    click_on "Create Vias engativa"

    assert_text "Vias engativa was successfully created"
    click_on "Back"
  end

  test "updating a Vias engativa" do
    visit vias_engativas_url
    click_on "Edit", match: :first

    fill_in "Mviccalzadad", with: @vias_engativa.mviccalzadad
    click_on "Update Vias engativa"

    assert_text "Vias engativa was successfully updated"
    click_on "Back"
  end

  test "destroying a Vias engativa" do
    visit vias_engativas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vias engativa was successfully destroyed"
  end
end
