class CreateRides < ActiveRecord::Migration
  def change
    create_table :rides do |t|
      t.string :ridename
      t.string :picture
      t.text :video
      t.integer :type_id

      t.timestamps
    end
  end
end
