require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
    @post = Post.new(user_id: 1, title: "This is a title", content:"This is a content")
  end
  test "Should not be true for valid post with proper title and content without user id" do
    assert_not @post.valid?
  end
  test "Empty title shouldn't be validate" do
    @post.title = ""
    assert_not @post.valid?
  end
  test "Empty content shouldn't be validate" do
    @post.content = ""
    assert_not @post.valid?
  end
end
