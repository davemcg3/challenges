class User < ApplicationRecord
  include Clearance::User

  has_one :profile

  after_create :generate_profile

  def generate_profile
    Profile.create display_name: email.split('@')[0], user_id: id
  end

  def to_s
    profile.display_name || email
  end
end
