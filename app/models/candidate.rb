class Candidate < ApplicationRecord
  # PARTIS = ["En Marche", "Les Républicains", "Debout la République", "Les Patriotes", "Cap écologie"]
  belongs_to :political_party
  belongs_to :user

  has_many :bookings, dependent: :destroy
  has_many_attached :photos
  has_many :reviews, through: :bookings

  validates :first_name, :last_name, presence: true
  validates :price_per_day, presence: true, numericality: { only_integer: true }
  validates :description, length: { minimum: 5 }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

end
