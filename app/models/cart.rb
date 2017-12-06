class Cart < ApplicationRecord
  has_many :cart_items
  belongs_to :account
  before_save :update_total
  before_create :update_status

  def calculate
    amounts = self.cart_items.collect do |item|
      if item.product.on_sale
        item.product.sale_price * item.quantity
      else
        item.product.list_price * item.quantity
      end
    end
    amounts.sum
  end

  private

  def update_status
    if self.status === nil?
      self.status = "In Progress"
    end
  end

  def update_total
    self.total_price = calculate_total
  end
end
