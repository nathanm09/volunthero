require 'test_helper'

class VherosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vhero = vheros(:one)
  end

  test "should get index" do
    get vheros_url
    assert_response :success
  end

  test "should get new" do
    get new_vhero_url
    assert_response :success
  end

  test "should create vhero" do
    assert_difference('Vhero.count') do
      post vheros_url, params: { vhero: { city: @vhero.city, country: @vhero.country, email: @vhero.email, firstname: @vhero.firstname, handles: @vhero.handles, interests: @vhero.interests, jobtitle: @vhero.jobtitle, lastname: @vhero.lastname, lastschool: @vhero.lastschool, organization: @vhero.organization, password: @vhero.password, province: @vhero.province, shortdescr: @vhero.shortdescr } }
    end

    assert_redirected_to vhero_url(Vhero.last)
  end

  test "should show vhero" do
    get vhero_url(@vhero)
    assert_response :success
  end

  test "should get edit" do
    get edit_vhero_url(@vhero)
    assert_response :success
  end

  test "should update vhero" do
    patch vhero_url(@vhero), params: { vhero: { city: @vhero.city, country: @vhero.country, email: @vhero.email, firstname: @vhero.firstname, handles: @vhero.handles, interests: @vhero.interests, jobtitle: @vhero.jobtitle, lastname: @vhero.lastname, lastschool: @vhero.lastschool, organization: @vhero.organization, password: @vhero.password, province: @vhero.province, shortdescr: @vhero.shortdescr } }
    assert_redirected_to vhero_url(@vhero)
  end

  test "should destroy vhero" do
    assert_difference('Vhero.count', -1) do
      delete vhero_url(@vhero)
    end

    assert_redirected_to vheros_url
  end
end
