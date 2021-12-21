class AddUniqueIndexToPartcipations < ActiveRecord::Migration[5.2]
  def change
    add_index :participations, [:profile_id, :challenge_id], :unique => true
  end
end
