class CreateCategoryGroups < ActiveRecord::Migration[8.0]
  def change
    create_table :category_groups do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.integer :is_income
      t.decimal :sort_order
      t.integer :tombstone

      t.timestamps
    end
  end
end
