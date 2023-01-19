# represents a user of micro-reddit
class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  has_many :comments, class_name: 'Comment', foreign_key: 'users_id'
  has_many :posts, class_name: 'Post', foreign_key: 'users_id'
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :age, presence: true
  validates :email, presence: true,
                    format: { with: VALID_EMAIL_REGEX, message: 'incorrect email format' },
                    uniqueness: { case_sensitive: false, message: 'email address already taken!' },
                    length: { maximum: 50 }
  
end
