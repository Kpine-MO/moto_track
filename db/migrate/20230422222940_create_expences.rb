class CreateExpences < ActiveRecord::Migration[7.0]
  def change
    create_table :expences do |t|
      t.integer :amount
      t.string :approved_by
      t.string :approval_status
      t.references :issue, null: false, foreign_key: true

      t.timestamps
    end
  end
end
