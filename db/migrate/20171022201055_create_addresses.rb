class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :zipcode
      t.string :city
    end
  end
end
