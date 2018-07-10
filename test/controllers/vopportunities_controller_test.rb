require 'test_helper'

class VopportunitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vopportunity = vopportunities(:one)
  end

  test "should get index" do
    get vopportunities_url
    assert_response :success
  end

  test "should get new" do
    get new_vopportunity_url
    assert_response :success
  end

  test "should create vopportunity" do
    assert_difference('Vopportunity.count') do
      post vopportunities_url, params: { vopportunity: { shortdescr: @vopportunity.shortdescr, title: @vopportunity.title, vopplogo: @vopportunity.vopplogo, voppname: @vopportunity.voppname, vorganization_id: @vopportunity.vorganization_id } }
    end

    assert_redirected_to vopportunity_url(Vopportunity.last)
  end

  test "should show vopportunity" do
    get vopportunity_url(@vopportunity)
    assert_response :success
  end

  test "should get edit" do
    get edit_vopportunity_url(@vopportunity)
    assert_response :success
  end

  test "should update vopportunity" do
    patch vopportunity_url(@vopportunity), params: { vopportunity: { shortdescr: @vopportunity.shortdescr, title: @vopportunity.title, vopplogo: @vopportunity.vopplogo, voppname: @vopportunity.voppname, vorganization_id: @vopportunity.vorganization_id } }
    assert_redirected_to vopportunity_url(@vopportunity)
  end

  test "should destroy vopportunity" do
    assert_difference('Vopportunity.count', -1) do
      delete vopportunity_url(@vopportunity)
    end

    assert_redirected_to vopportunities_url
  end
end
