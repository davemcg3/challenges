class ChangeProfilesToAttachToUsers < ActiveRecord::Migration[5.2]
  def change
    remove_reference :profiles, :identity, index: true
    add_reference :profiles, :user, index:true
  end
end
