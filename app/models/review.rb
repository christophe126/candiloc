class Review < ApplicationRecord
  belongs_to :booking

  validates :comment, presence: true
end
