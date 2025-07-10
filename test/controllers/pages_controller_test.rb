require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get about" do
    get pages_about_url
    assert_response :success
  end

  test "should get my_books" do
    get pages_my_books_url
    assert_response :success
  end

  test "should get my_reviews" do
    get pages_my_reviews_url
    assert_response :success
  end
end
