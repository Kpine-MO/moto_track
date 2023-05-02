class AddSaccoToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :sacco, null: false, foreign_key: true
  end
end
