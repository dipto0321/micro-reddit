require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  def setup
    @user = User.new(name:"Dipyan", email:"dipyan@gmail.com")
  end

  test "User's name should be present" do
    @user.name = ""
    assert_not @user.valid?
  end

  test "User email should be present" do
    @user.email = ""
    assert_not @user.valid?
  end
end
