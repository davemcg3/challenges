class Profile < ApplicationRecord
  belongs_to :user
  has_many :challenges

  def to_s
    display_name || user.email
  end
end
