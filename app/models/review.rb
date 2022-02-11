class Review < ApplicationRecord
  belongs_to :booking

  validates :comment, presence: true
  validates :rating, presence: true
end
