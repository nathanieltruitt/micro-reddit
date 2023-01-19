class User < ApplicationRecord
  has_many :comments, class_name: "Comment", foreign_key: "users_id"
  has_many :posts, class_name: "Post", foreign_key: "users_id"
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :age, presence: true
  validates :email, presence: true
end
