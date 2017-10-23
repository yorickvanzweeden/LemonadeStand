class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.integer :role
      t.string :first_name
      t.string :infix
      t.string :last_name
      t.references :address, foreign_key: true
    end
  end
end
