class CreateIssues < ActiveRecord::Migration[7.0]
  def change
    create_table :issues do |t|
      t.string :vehicle
      t.string :category
      t.string :description
      t.string :settled_by
      t.string :status
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
