require "test_helper"

class CartsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get carts_show_url
    assert_response :success
  end

  test "should get add" do
    get carts_add_url
    assert_response :success
  end

  test "should get remove" do
    get carts_remove_url
    assert_response :success
  end

  test "should get clear" do
    get carts_clear_url
    assert_response :success
  end

  test "should get complete" do
    get carts_complete_url
    assert_response :success
  end
end
