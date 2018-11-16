class Comment < ApplicationRecord
  validates :user_id, :comment_morph_type, :comment_morph_id, :body, presence: true
  belongs_to :user
  belongs_to :comment_morph, polymorphic: true
  has_many :comments, as: :comment_morph
end
