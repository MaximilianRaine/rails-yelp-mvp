class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :user_name, presence: true
  validates :rating, presence: true, numericality: { only_integer: true }, inclusion: { in: (0..5) }
end
