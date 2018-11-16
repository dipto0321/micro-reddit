require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  def setup
    @user = User.create(name:"Jackie", email:"drunker@master.com")
    @drunken_post = @user.posts.create(title:"I want some beer",content:"So I can do the drunken fist!")
    @drunken_comment = @drunken_post.comments.new(user_id:@user.id, body:"I beat ya punk")
  end

  test "Comment with user id is valid" do
    assert @drunken_comment.valid?
  end
end
