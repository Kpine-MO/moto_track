class CreateTests < ActiveRecord::Migration[7.0]
  def change
    create_table :tests do |t|
      t.string :see
      t.string :doo

      t.timestamps
    end
  end
end
