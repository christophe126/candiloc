class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :candidate
  has_many :reviews
end
