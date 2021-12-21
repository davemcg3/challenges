class CreateGivenTaunts < ActiveRecord::Migration[5.2]
  def change
    create_table :given_taunts do |t|
      t.references :available_taunt, foreign_key: true
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
