class Post < ApplicationRecord
  has_many :comments, class_name: "Comment", foreign_key: "posts_id"
  belongs_to :users, class_name: "User", foreign_key: "users_id"
  validates :content, presence: true
  validates :users_id, presence: true
end
