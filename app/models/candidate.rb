class Candidate < ApplicationRecord

  belongs_to :political_party
  belongs_to :user

  has_many :bookings, dependent: :destroy

  has_many :reviews, through: :bookings

  validates :first_name, :last_name, presence: true
  validates :price_by_day, presence: true, numerality: true
  validates :description, length: { minimum: 5 }

end
