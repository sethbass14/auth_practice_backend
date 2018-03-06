class Joke < ApplicationRecord
  has_many :user_jokes 
  has_many :users, through: :user_jokes
end
