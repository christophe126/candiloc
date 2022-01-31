class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :candidate
  has_many :reviews

  validates :start_date, date: { before: :end_date }

  validates :total_price, numericality: { only_integer: true }
end
