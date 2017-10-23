class AddCookRefToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :cook_id, :integer
    add_foreign_key  :products, :profiles, column: :cook_id
  end
end
