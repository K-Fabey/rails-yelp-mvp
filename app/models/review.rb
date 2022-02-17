class Review < ApplicationRecord
  belongs_to :restaurant

  # RATINGS = [1..5]
  validates :content, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, presence: true, inclusion: { in: 0..5 }
end
