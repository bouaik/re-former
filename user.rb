class User < ApplicationRecord
  has_many :posts
  has_many :comments
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i.freeze
  validates :username, presence: true,
                       length: { maximum: 50, minimum: 3 },
                       uniqueness: { case_sensitive: false }
  validates :email, presence: true,
                    length: { maximum: 255 },
                    uniqueness: { case_sensitive: false },
                    format: { with: VALID_EMAIL_REGEX }
end
