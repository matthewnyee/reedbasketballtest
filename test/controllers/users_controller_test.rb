require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get home" do
    get :index
    assert_response :success
    assert_select "title", "Reed Basketball Attendance"
  end

  test "should get new" do
    get :new
    assert_response :success
    assert_select "title", "Create New User | Reed Open Gym"
  end

 test "should get about" do
   get :about
   assert_response :success
   assert_select "title", "About | Reed Open Gym"
 end

 test "should get edit" do
   get :edit
   assert_response :success
   assert_select "title", "Edit User | Reed Open Gym"
 end
end
