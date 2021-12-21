class AvailableTaunt < ApplicationRecord
  belongs_to :tauntable, polymorphic: true
end
