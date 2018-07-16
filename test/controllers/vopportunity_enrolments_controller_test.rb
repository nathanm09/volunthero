require 'test_helper'

class VopportunityEnrolmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vopportunity_enrolment = vopportunity_enrolments(:one)
  end

  test "should get index" do
    get vopportunity_enrolments_url
    assert_response :success
  end

  test "should get new" do
    get new_vopportunity_enrolment_url
    assert_response :success
  end

  test "should create vopportunity_enrolment" do
    assert_difference('VopportunityEnrolment.count') do
      post vopportunity_enrolments_url, params: { vopportunity_enrolment: { vhero_id: @vopportunity_enrolment.vhero_id, vopportunity_id: @vopportunity_enrolment.vopportunity_id } }
    end

    assert_redirected_to vopportunity_enrolment_url(VopportunityEnrolment.last)
  end

  test "should show vopportunity_enrolment" do
    get vopportunity_enrolment_url(@vopportunity_enrolment)
    assert_response :success
  end

  test "should get edit" do
    get edit_vopportunity_enrolment_url(@vopportunity_enrolment)
    assert_response :success
  end

  test "should update vopportunity_enrolment" do
    patch vopportunity_enrolment_url(@vopportunity_enrolment), params: { vopportunity_enrolment: { vhero_id: @vopportunity_enrolment.vhero_id, vopportunity_id: @vopportunity_enrolment.vopportunity_id } }
    assert_redirected_to vopportunity_enrolment_url(@vopportunity_enrolment)
  end

  test "should destroy vopportunity_enrolment" do
    assert_difference('VopportunityEnrolment.count', -1) do
      delete vopportunity_enrolment_url(@vopportunity_enrolment)
    end

    assert_redirected_to vopportunity_enrolments_url
  end
end
