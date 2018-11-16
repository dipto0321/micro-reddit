require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "John", email:"john@email.com")
  end
  test "Should be true for valid name and email" do
    assert @user.valid?
  end
  test "Empty name shouldn't be validate" do
    @user.name = ""
    assert_not @user.valid?
  end
  test "Empty email shouldn't be validate" do
    @user.email = ""
    assert_not @user.valid?
  end
end
