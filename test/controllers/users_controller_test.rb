require 'test_helper'

class UsersControllerTest < ActionController::TestCase

  setup do

    @user1 = User.new(fname: "Example", lname: "User", nickname: "Demo", email: "user@example.com", password: "tested", password_confirmation: "tested", level: 1, max: 0)
    @user1.save

  end


  test "should get new" do
    get :new
    assert_response :success
  end

  test "enter user list" do

    #@user.save
    session[:user_id]=1
    get :index
    assert_response :success

  end

  test "enter edit page" do

    #@user.save
    session[:user_id]=0
    get :edit , id: session[:user_id]
    assert_response :redirect

  end

end
