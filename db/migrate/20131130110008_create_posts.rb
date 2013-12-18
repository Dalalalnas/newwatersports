class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :content
      t.boolean :agree
      t.integer :ride_id
      t.integer :user_id

      t.timestamps
    end
  end
end
