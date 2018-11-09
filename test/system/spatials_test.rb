require "application_system_test_case"

class SpatialsTest < ApplicationSystemTestCase
  setup do
    @spatial = spatials(:one)
  end

  test "visiting the index" do
    visit spatials_url
    assert_selector "h1", text: "Spatials"
  end

  test "creating a Spatial" do
    visit spatials_url
    click_on "New Spatial"

    fill_in "Auth Name", with: @spatial.auth_name
    fill_in "Auth Srid", with: @spatial.auth_srid
    click_on "Create Spatial"

    assert_text "Spatial was successfully created"
    click_on "Back"
  end

  test "updating a Spatial" do
    visit spatials_url
    click_on "Edit", match: :first

    fill_in "Auth Name", with: @spatial.auth_name
    fill_in "Auth Srid", with: @spatial.auth_srid
    click_on "Update Spatial"

    assert_text "Spatial was successfully updated"
    click_on "Back"
  end

  test "destroying a Spatial" do
    visit spatials_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Spatial was successfully destroyed"
  end
end
