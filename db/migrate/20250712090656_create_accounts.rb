class CreateAccounts < ActiveRecord::Migration[8.0]
  def change
    create_table :accounts do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :kind
      t.integer :offbudget
      t.integer :closed
      t.integer :tombstone

      t.timestamps
    end
  end
end
