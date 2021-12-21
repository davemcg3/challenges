class CreateChallenges < ActiveRecord::Migration[5.2]
  def change
    create_table :challenges do |t|
      t.references :profile, foreign_key: true
      t.string :title
      t.text :description
      t.boolean :public

      t.timestamps
    end
  end
end
