class User < ApplicationRecord
  has_many :articles, dependent: :destroy
  before_save { self.email = email.downcase }
  validates :username, presence: true, uniqueness: {case_sensitive: false}, length: {manimum:3, maximum:25}
  VALID_EMAIL_REGEX= /\A[\W+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: {case_sensitive: false}, length: { maximum:105}
  has_secure_password
end