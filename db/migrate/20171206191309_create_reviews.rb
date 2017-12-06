class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :product_id
      t.integer :account_id
      t.string :body
      t.integer :rating

      t.timestamps
    end
  end
end
