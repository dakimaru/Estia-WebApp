require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get how_it_works" do
    get :how_it_works
    assert_response :success
  end

  test "should get support" do
    get :support
    assert_response :success
  end

  test "should get jobs" do
    get :jobs
    assert_response :success
  end

  test "should get news" do
    get :news
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
