class Product < ApplicationRecord
  has_many :reviews
  has_many :cart_items

  has_attached_file :image
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  def self.lower_stock(current_cart)
    current_cart.cart_items.each do |item|
      product = Product.find(item.product_id)
      product.update({ in_stock: product.in_stock - item.quantity })
    end
  end 
end
