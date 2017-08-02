class User < ApplicationRecord
  has_many :microposts
  
  # Section 2.3.3, Exercise 3
  validates :name, presence: true
  validates :email, presence: true
  #
end
