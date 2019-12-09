class User < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name,  presence: true
  validates :email,      presence: true,
                         format:   {with: VALID_EMAIL_REGEX}

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  has_secure_password

  validates :password,   length: {minimum: 6}
end
