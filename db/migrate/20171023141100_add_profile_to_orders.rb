class AddProfileToOrders < ActiveRecord::Migration[5.0]
  def change
    add_reference :orders, :profile, foreign_key: true
  end
end
