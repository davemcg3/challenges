class CreateIdentities < ActiveRecord::Migration[5.2]
  def change
    create_table :identities do |t|

      t.timestamps
    end
  end
end
