require 'test_helper'

class UniversesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @universe = universes(:one)
  end

  test "should get index" do
    get universes_url
    assert_response :success
  end

  test "should get new" do
    get new_universe_url
    assert_response :success
  end

  test "should create universe" do
    assert_difference('Universe.count') do
      post universes_url, params: { universe: { banner_url: @universe.banner_url, name: @universe.name } }
    end

    assert_redirected_to universe_url(Universe.last)
  end

  test "should show universe" do
    get universe_url(@universe)
    assert_response :success
  end

  test "should get edit" do
    get edit_universe_url(@universe)
    assert_response :success
  end

  test "should update universe" do
    patch universe_url(@universe), params: { universe: { banner_url: @universe.banner_url, name: @universe.name } }
    assert_redirected_to universe_url(@universe)
  end

  test "should destroy universe" do
    assert_difference('Universe.count', -1) do
      delete universe_url(@universe)
    end

    assert_redirected_to universes_url
  end
end
