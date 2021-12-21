class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.references :challenge, foreign_key: true
      t.text :data

      t.timestamps
    end
  end
end
