class CreateTextTaunts < ActiveRecord::Migration[5.2]
  def change
    create_table :text_taunts do |t|
      t.text :description

      t.timestamps
    end
  end
end
