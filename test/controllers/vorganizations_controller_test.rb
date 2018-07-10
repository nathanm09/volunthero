require 'test_helper'

class VorganizationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vorganization = vorganizations(:one)
  end

  test "should get index" do
    get vorganizations_url
    assert_response :success
  end

  test "should get new" do
    get new_vorganization_url
    assert_response :success
  end

  test "should create vorganization" do
    assert_difference('Vorganization.count') do
      post vorganizations_url, params: { vorganization: { city: @vorganization.city, country: @vorganization.country, handles: @vorganization.handles, province: @vorganization.province, shortdescr: @vorganization.shortdescr, vorglogo: @vorganization.vorglogo, vorgname: @vorganization.vorgname, vorgtype: @vorganization.vorgtype, website: @vorganization.website } }
    end

    assert_redirected_to vorganization_url(Vorganization.last)
  end

  test "should show vorganization" do
    get vorganization_url(@vorganization)
    assert_response :success
  end

  test "should get edit" do
    get edit_vorganization_url(@vorganization)
    assert_response :success
  end

  test "should update vorganization" do
    patch vorganization_url(@vorganization), params: { vorganization: { city: @vorganization.city, country: @vorganization.country, handles: @vorganization.handles, province: @vorganization.province, shortdescr: @vorganization.shortdescr, vorglogo: @vorganization.vorglogo, vorgname: @vorganization.vorgname, vorgtype: @vorganization.vorgtype, website: @vorganization.website } }
    assert_redirected_to vorganization_url(@vorganization)
  end

  test "should destroy vorganization" do
    assert_difference('Vorganization.count', -1) do
      delete vorganization_url(@vorganization)
    end

    assert_redirected_to vorganizations_url
  end
end
