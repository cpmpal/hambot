require 'test_helper'

class FedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fed = feds(:one)
  end

  test "should get index" do
    get feds_url
    assert_response :success
  end

  test "should get new" do
    get new_fed_url
    assert_response :success
  end

  test "should create fed" do
    assert_difference('Fed.count') do
      post feds_url, params: { fed: { ate: @fed.ate, buyer: @fed.buyer, date: @fed.date } }
    end

    assert_redirected_to fed_url(Fed.last)
  end

  test "should show fed" do
    get fed_url(@fed)
    assert_response :success
  end

  test "should get edit" do
    get edit_fed_url(@fed)
    assert_response :success
  end

  test "should update fed" do
    patch fed_url(@fed), params: { fed: { ate: @fed.ate, buyer: @fed.buyer, date: @fed.date } }
    assert_redirected_to fed_url(@fed)
  end

  test "should destroy fed" do
    assert_difference('Fed.count', -1) do
      delete fed_url(@fed)
    end

    assert_redirected_to feds_url
  end
end
