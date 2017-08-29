require 'test_helper'

class ClucksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get clucks_index_url
    assert_response :success
  end

  test "should get show" do
    get clucks_show_url
    assert_response :success
  end

  test "should get new" do
    get clucks_new_url
    assert_response :success
  end

  test "should get edit" do
    get clucks_edit_url
    assert_response :success
  end

end
