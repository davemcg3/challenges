class Participation < ApplicationRecord
  belongs_to :profile
  belongs_to :challenge
end
