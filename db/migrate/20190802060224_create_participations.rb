class CreateParticipations < ActiveRecord::Migration[5.2]
  def change
    create_table :participations do |t|
      t.references :profile, foreign_key: true
      t.references :challenge, foreign_key: true

      t.timestamps
    end
  end
end
