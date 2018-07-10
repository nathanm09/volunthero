require "application_system_test_case"

class VopportunitiesTest < ApplicationSystemTestCase
  setup do
    @vopportunity = vopportunities(:one)
  end

  test "visiting the index" do
    visit vopportunities_url
    assert_selector "h1", text: "Vopportunities"
  end

  test "creating a Vopportunity" do
    visit vopportunities_url
    click_on "New Vopportunity"

    fill_in "Shortdescr", with: @vopportunity.shortdescr
    fill_in "Title", with: @vopportunity.title
    fill_in "Vopplogo", with: @vopportunity.vopplogo
    fill_in "Voppname", with: @vopportunity.voppname
    fill_in "Vorganization", with: @vopportunity.vorganization_id
    click_on "Create Vopportunity"

    assert_text "Vopportunity was successfully created"
    click_on "Back"
  end

  test "updating a Vopportunity" do
    visit vopportunities_url
    click_on "Edit", match: :first

    fill_in "Shortdescr", with: @vopportunity.shortdescr
    fill_in "Title", with: @vopportunity.title
    fill_in "Vopplogo", with: @vopportunity.vopplogo
    fill_in "Voppname", with: @vopportunity.voppname
    fill_in "Vorganization", with: @vopportunity.vorganization_id
    click_on "Update Vopportunity"

    assert_text "Vopportunity was successfully updated"
    click_on "Back"
  end

  test "destroying a Vopportunity" do
    visit vopportunities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vopportunity was successfully destroyed"
  end
end
