class Candidate < ApplicationRecord
  belongs_to :political_party
  belongs_to :user
end
