class CreateSubscriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :subscriptions do |t|
      t.string :name
      t.references :product, foreign_key: true
      t.references :provider, foreign_key: true

      t.timestamps
    end
  end
end
