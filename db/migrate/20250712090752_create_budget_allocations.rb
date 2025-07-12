class CreateBudgetAllocations < ActiveRecord::Migration[8.0]
  def change
    create_table :budget_allocations do |t|
      t.references :user, null: false, foreign_key: true
      t.string :month
      t.references :category, null: false, foreign_key: true
      t.integer :budgeted

      t.timestamps
    end
  end
end
