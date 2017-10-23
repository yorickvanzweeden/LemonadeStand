class Order < ApplicationRecord
  enum status: {
    awaiting_payment: 0,
    open: 1,
    accepted: 2,
    rejected: 3,
    completed: 4,
    cancelled: 5,
    refunded: 6
  }
  has_many :order_items
  belongs_to :profile, required: false
  before_save :update_total

  def add_product(item_params)
    item = self.order_items.find_by(product_id: item_params[:product_id])

    if item
      item.quantity += item_params[:quantity].to_i
      item.save!
    else
      new_item = self.order_items.new(item_params)
    end
  end

  def cancel
    self.order.update_attribute(status:"cancelled")
  end



  def calculate_total
    self.order_items.each { |x| puts x.product.inspect }
    self.order_items.collect { |item| item.product.price * item.quantity }.sum
  end

  private

  def update_total
    self.total_price = calculate_total
  end
end