require "application_system_test_case"

class VherosTest < ApplicationSystemTestCase
  setup do
    @vhero = vheros(:one)
  end

  test "visiting the index" do
    visit vheros_url
    assert_selector "h1", text: "Vheros"
  end

  test "creating a Vhero" do
    visit vheros_url
    click_on "New Vhero"

    fill_in "City", with: @vhero.city
    fill_in "Country", with: @vhero.country
    fill_in "Email", with: @vhero.email
    fill_in "Firstname", with: @vhero.firstname
    fill_in "Handles", with: @vhero.handles
    fill_in "Interests", with: @vhero.interests
    fill_in "Jobtitle", with: @vhero.jobtitle
    fill_in "Lastname", with: @vhero.lastname
    fill_in "Lastschool", with: @vhero.lastschool
    fill_in "Organization", with: @vhero.organization
    fill_in "Password", with: @vhero.password
    fill_in "Province", with: @vhero.province
    fill_in "Shortdescr", with: @vhero.shortdescr
    click_on "Create Vhero"

    assert_text "Vhero was successfully created"
    click_on "Back"
  end

  test "updating a Vhero" do
    visit vheros_url
    click_on "Edit", match: :first

    fill_in "City", with: @vhero.city
    fill_in "Country", with: @vhero.country
    fill_in "Email", with: @vhero.email
    fill_in "Firstname", with: @vhero.firstname
    fill_in "Handles", with: @vhero.handles
    fill_in "Interests", with: @vhero.interests
    fill_in "Jobtitle", with: @vhero.jobtitle
    fill_in "Lastname", with: @vhero.lastname
    fill_in "Lastschool", with: @vhero.lastschool
    fill_in "Organization", with: @vhero.organization
    fill_in "Password", with: @vhero.password
    fill_in "Province", with: @vhero.province
    fill_in "Shortdescr", with: @vhero.shortdescr
    click_on "Update Vhero"

    assert_text "Vhero was successfully updated"
    click_on "Back"
  end

  test "destroying a Vhero" do
    visit vheros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vhero was successfully destroyed"
  end
end
