class PoliticalParty < ApplicationRecord
  belongs_to :candidate

  validates :name, presence: true
end
