class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: 0..5 }
end

# A review must belong to a restaurant. OK
# A review must have content and a rating. OK
# A review rating must be a number between 0 and 5.
