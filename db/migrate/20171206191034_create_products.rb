class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :list_price
      t.decimal :sale_price
      t.boolean :featured
      t.integer :in_stock
      t.boolean :on_sale

      t.timestamps
    end
  end
end
