class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :quantity
      t.float :price
      t.string :payment
      t.integer :ride_id
      t.integer :user_id

      t.timestamps
    end
  end
end
