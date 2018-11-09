require 'test_helper'

class SpatialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spatial = spatials(:one)
  end

  test "should get index" do
    get spatials_url
    assert_response :success
  end

  test "should get new" do
    get new_spatial_url
    assert_response :success
  end

  test "should create spatial" do
    assert_difference('Spatial.count') do
      post spatials_url, params: { spatial: { auth_name: @spatial.auth_name, auth_srid: @spatial.auth_srid } }
    end

    assert_redirected_to spatial_url(Spatial.last)
  end

  test "should show spatial" do
    get spatial_url(@spatial)
    assert_response :success
  end

  test "should get edit" do
    get edit_spatial_url(@spatial)
    assert_response :success
  end

  test "should update spatial" do
    patch spatial_url(@spatial), params: { spatial: { auth_name: @spatial.auth_name, auth_srid: @spatial.auth_srid } }
    assert_redirected_to spatial_url(@spatial)
  end

  test "should destroy spatial" do
    assert_difference('Spatial.count', -1) do
      delete spatial_url(@spatial)
    end

    assert_redirected_to spatials_url
  end
end
