class Challenge < ApplicationRecord
  belongs_to :profile
  has_many :participations
  has_many :participants, through: :participations, source: :profile
end
