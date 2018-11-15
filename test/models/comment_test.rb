require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  def setup
    @comment = Comment.new(body:"Hi")
  end

  test "User ID and Post ID must be present" do
    assert_not @comment.valid?
  end

  test "There should be a comment body" do
    @comment.body = ""
    assert_not @comment.valid?
  end
end
