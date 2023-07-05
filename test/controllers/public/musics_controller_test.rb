require "test_helper"

class Public::MusicsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get public_musics_new_url
    assert_response :success
  end

  test "should get index" do
    get public_musics_index_url
    assert_response :success
  end

  test "should get show" do
    get public_musics_show_url
    assert_response :success
  end

  test "should get create" do
    get public_musics_create_url
    assert_response :success
  end

  test "should get destroy" do
    get public_musics_destroy_url
    assert_response :success
  end
end
