class User < ApplicationRecord
  has_many :comments, class_name: "Comment", foreign_key: "users_id"
  has_many :posts, class_name: "Post", foreign_key: "users_id"
end
