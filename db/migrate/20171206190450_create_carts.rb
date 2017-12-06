class CreateCarts < ActiveRecord::Migration[5.0]
  def change
    create_table :carts do |t|
      t.string :status
      t.integer :account_id
      t.decimal :total_price
      t.decimal :sub_total
      t.decimal :tax
      t.decimal :shipping

      t.timestamps
    end
  end
end
