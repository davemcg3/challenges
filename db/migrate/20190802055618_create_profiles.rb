class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.references :identity, foreign_key: true
      t.string :display_name
      t.text :bio

      t.timestamps
    end
  end
end
