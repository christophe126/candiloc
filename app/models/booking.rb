class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :candidate
  has_many :reviews

  # validates :start_date, format: { with: %r{[1-9]{1}[0-9]{1}/[0-9]{2}/[0-9]{4}} }
  # validates :total_price, numericality: { only_integer: true }
end
