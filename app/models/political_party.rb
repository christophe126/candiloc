class PoliticalParty < ApplicationRecord
  belongs_to :candidate, optional: true

  validates :name, uniqueness: true
end
