class User < ApplicationRecord
  has_secure_password
  has_many :user_jokes
  has_many :jokes, through: :user_jokes
end
