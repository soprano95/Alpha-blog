class User < ApplicationRecord
  validates :username, presence: true, uniqueness: {case_sensitive: false}, length: {manimum:3, maximum:25}
  VALID_EMAIL_REGEX=-m /\A[\W+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: {case_sensitive: false}, length: { maximum:105}
end