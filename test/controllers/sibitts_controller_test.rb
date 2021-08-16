require "test_helper"

class SibittsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sibitt = sibitts(:one)
  end

  test "should get index" do
    get sibitts_url
    assert_response :success
  end

  test "should get new" do
    get new_sibitt_url
    assert_response :success
  end

  test "should create sibitt" do
    assert_difference('Sibitt.count') do
      post sibitts_url, params: { sibitt: { sibitt: @sibitt.sibitt } }
    end

    assert_redirected_to sibitt_url(Sibitt.last)
  end

  test "should show sibitt" do
    get sibitt_url(@sibitt)
    assert_response :success
  end

  test "should get edit" do
    get edit_sibitt_url(@sibitt)
    assert_response :success
  end

  test "should update sibitt" do
    patch sibitt_url(@sibitt), params: { sibitt: { sibitt: @sibitt.sibitt } }
    assert_redirected_to sibitt_url(@sibitt)
  end

  test "should destroy sibitt" do
    assert_difference('Sibitt.count', -1) do
      delete sibitt_url(@sibitt)
    end

    assert_redirected_to sibitts_url
  end
end
