require "application_system_test_case"

class VopportunityEnrolmentsTest < ApplicationSystemTestCase
  setup do
    @vopportunity_enrolment = vopportunity_enrolments(:one)
  end

  test "visiting the index" do
    visit vopportunity_enrolments_url
    assert_selector "h1", text: "Vopportunity Enrolments"
  end

  test "creating a Vopportunity enrolment" do
    visit vopportunity_enrolments_url
    click_on "New Vopportunity Enrolment"

    fill_in "Vhero", with: @vopportunity_enrolment.vhero_id
    fill_in "Vopportunity", with: @vopportunity_enrolment.vopportunity_id
    click_on "Create Vopportunity enrolment"

    assert_text "Vopportunity enrolment was successfully created"
    click_on "Back"
  end

  test "updating a Vopportunity enrolment" do
    visit vopportunity_enrolments_url
    click_on "Edit", match: :first

    fill_in "Vhero", with: @vopportunity_enrolment.vhero_id
    fill_in "Vopportunity", with: @vopportunity_enrolment.vopportunity_id
    click_on "Update Vopportunity enrolment"

    assert_text "Vopportunity enrolment was successfully updated"
    click_on "Back"
  end

  test "destroying a Vopportunity enrolment" do
    visit vopportunity_enrolments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vopportunity enrolment was successfully destroyed"
  end
end
