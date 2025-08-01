class CreateCategories < ActiveRecord::Migration[8.0]
  def change
    create_table :categories do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.integer :is_income
      t.references :category_group, null: false, foreign_key: true
      t.decimal :sort_order
      t.integer :tombstone

      t.timestamps
    end
  end
end
