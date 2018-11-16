class Comment < ApplicationRecord
  validates :user_id, :post_id, :body, presence: true
  belongs_to :user
  belongs_to :comment_morph, polymorphic: true
  has_many :comments, as: :comment_morph
end
