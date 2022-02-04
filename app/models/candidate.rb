class Candidate < ApplicationRecord
  belongs_to :political_party
  belongs_to :user

  has_many :bookings, dependent: :destroy

  has_many :reviews, through: :booking

  validates :first_name, :last_name, presence: true
  validates :price_per_day, presence: true, numericality: { only_integer: true }
  validates :description, length: { minimum: 5 }
end
