require "application_system_test_case"

class VorganizationsTest < ApplicationSystemTestCase
  setup do
    @vorganization = vorganizations(:one)
  end

  test "visiting the index" do
    visit vorganizations_url
    assert_selector "h1", text: "Vorganizations"
  end

  test "creating a Vorganization" do
    visit vorganizations_url
    click_on "New Vorganization"

    fill_in "City", with: @vorganization.city
    fill_in "Country", with: @vorganization.country
    fill_in "Handles", with: @vorganization.handles
    fill_in "Province", with: @vorganization.province
    fill_in "Shortdescr", with: @vorganization.shortdescr
    fill_in "Vorglogo", with: @vorganization.vorglogo
    fill_in "Vorgname", with: @vorganization.vorgname
    fill_in "Vorgtype", with: @vorganization.vorgtype
    fill_in "Website", with: @vorganization.website
    click_on "Create Vorganization"

    assert_text "Vorganization was successfully created"
    click_on "Back"
  end

  test "updating a Vorganization" do
    visit vorganizations_url
    click_on "Edit", match: :first

    fill_in "City", with: @vorganization.city
    fill_in "Country", with: @vorganization.country
    fill_in "Handles", with: @vorganization.handles
    fill_in "Province", with: @vorganization.province
    fill_in "Shortdescr", with: @vorganization.shortdescr
    fill_in "Vorglogo", with: @vorganization.vorglogo
    fill_in "Vorgname", with: @vorganization.vorgname
    fill_in "Vorgtype", with: @vorganization.vorgtype
    fill_in "Website", with: @vorganization.website
    click_on "Update Vorganization"

    assert_text "Vorganization was successfully updated"
    click_on "Back"
  end

  test "destroying a Vorganization" do
    visit vorganizations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vorganization was successfully destroyed"
  end
end
