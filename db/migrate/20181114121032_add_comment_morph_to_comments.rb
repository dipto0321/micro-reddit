class AddCommentMorphToComments < ActiveRecord::Migration[5.2]
  def change
    change_table :comments do |t|
      t.integer :comment_morph_id, foreign_key: true
      t.string :comment_morph_type
    end
  end
end
