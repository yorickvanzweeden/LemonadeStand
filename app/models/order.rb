class Order < ApplicationRecord
  has_many :order_items
  before_save :update_total
  before_create :update_status

  def add_product(item_params)
    item = self.order_items.find_by(product_id: item_params[:product_id])

    if item
      item.quantity += item_params[:quantity].to_i
      item.save!
    else
      new_item = self.order_items.new(item_params)
    end
  end


  def calculate_total
    self.order_items.each { |x| puts x.product.inspect }
    self.order_items.collect { |item| item.product.price * item.quantity }.sum
  end

  private

  def update_status
    if self.status == nil?
      self.status = "In progress"
    end
  end

  def update_total
    self.total_price = calculate_total
  end
end