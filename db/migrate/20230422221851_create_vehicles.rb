class CreateVehicles < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicles do |t|
      t.string :model
      t.string :plate
      t.integer :number_of_seats
      t.string :created_by
      t.boolean :is_active
      t.boolean :is_deleted
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
