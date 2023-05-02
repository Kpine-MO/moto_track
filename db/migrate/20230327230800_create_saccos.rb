class CreateSaccos < ActiveRecord::Migration[7.0]
  def change
    create_table :saccos do |t|
      t.string :name
      t.string :email
      t.string :created_by
      t.string :phone
      t.boolean :is_active
      t.boolean :is_deleted

      t.timestamps
    end
  end
end
