class Micropost < ApplicationRecord
  belongs_to :user
  validates :content, length: { maximum: 140 },
                      presence: true  # Section 2.3.3 Exercise 2
end
