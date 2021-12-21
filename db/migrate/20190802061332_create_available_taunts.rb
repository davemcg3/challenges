class CreateAvailableTaunts < ActiveRecord::Migration[5.2]
  def change
    create_table :available_taunts do |t|
      t.references :tauntable, polymorphic: true

      t.timestamps
    end
  end
end
