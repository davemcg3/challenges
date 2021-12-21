class CreateWagers < ActiveRecord::Migration[5.2]
  def change
    create_table :wagers do |t|
      t.references :challenge, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
