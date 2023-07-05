require "test_helper"

class Public::AlbumsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_albums_index_url
    assert_response :success
  end

  test "should get destroy" do
    get public_albums_destroy_url
    assert_response :success
  end
end
