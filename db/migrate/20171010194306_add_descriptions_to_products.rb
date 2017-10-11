class AddDescriptionsToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :short_description, :string, :limit => 80
    add_column :products, :description, :string, :limit => 2000
  end
end
