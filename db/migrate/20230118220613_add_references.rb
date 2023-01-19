class AddReferences < ActiveRecord::Migration[7.0]
  def change
    add_reference :posts, :users, foreign_key: true
    add_reference :comments, :users, foreign_key: true
    add_reference :comments, :posts, foreign_key: true
    add_reference :comments, :comments
  end
end
