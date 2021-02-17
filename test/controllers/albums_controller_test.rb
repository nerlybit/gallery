require "test_helper"

class AlbumsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get albums_new_url
    assert_response :success
  end

  test "should get show" do
    get albums_show_url
    assert_response :success
  end

  test "should get update" do
    get albums_update_url
    assert_response :success
  end

  test "should get destroy" do
    get albums_destroy_url
    assert_response :success
  end
end
