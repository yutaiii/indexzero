class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :contents
      t.string :title
      t.string :tag
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
