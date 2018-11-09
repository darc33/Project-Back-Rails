require 'test_helper'

class ViasEngativasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vias_engativa = vias_engativas(:one)
  end

  test "should get index" do
    get vias_engativas_url
    assert_response :success
  end

  test "should get new" do
    get new_vias_engativa_url
    assert_response :success
  end

  test "should create vias_engativa" do
    assert_difference('ViasEngativa.count') do
      post vias_engativas_url, params: { vias_engativa: { mviccalzadad: @vias_engativa.mviccalzadad } }
    end

    assert_redirected_to vias_engativa_url(ViasEngativa.last)
  end

  test "should show vias_engativa" do
    get vias_engativa_url(@vias_engativa)
    assert_response :success
  end

  test "should get edit" do
    get edit_vias_engativa_url(@vias_engativa)
    assert_response :success
  end

  test "should update vias_engativa" do
    patch vias_engativa_url(@vias_engativa), params: { vias_engativa: { mviccalzadad: @vias_engativa.mviccalzadad } }
    assert_redirected_to vias_engativa_url(@vias_engativa)
  end

  test "should destroy vias_engativa" do
    assert_difference('ViasEngativa.count', -1) do
      delete vias_engativa_url(@vias_engativa)
    end

    assert_redirected_to vias_engativas_url
  end
end
