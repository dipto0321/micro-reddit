class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :comment_morph, polymorphic: true
  has_many :comments, as: :comment_morph
end
