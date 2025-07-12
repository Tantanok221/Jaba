class CreateTransactions < ActiveRecord::Migration[8.0]
  def change
    create_table :transactions do |t|
      t.references :user, null: false, foreign_key: true
      t.references :account, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.integer :amount
      t.text :description
      t.text :notes
      t.integer :date
      t.string :kind
      t.integer :starting_balance_flag
      t.integer :transferred_id
      t.decimal :sort_order
      t.integer :tombstone

      t.timestamps
    end
  end
end
