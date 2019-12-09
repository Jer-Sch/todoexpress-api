class User < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name,  presence: true
  validates :email,      presence: true
  has_secure_password
  validates :password,   length: {minimum: 6}
end
