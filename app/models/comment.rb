class Comment < ApplicationRecord
  belongs_to :posts, class_name: "Post", foreign_key: "posts_id"
  belongs_to :users, class_name: "User", foreign_key: "users_id"
  validates :message, presence: true
  validates :users_id, presence: true
  validates :post_id, presence: true
end