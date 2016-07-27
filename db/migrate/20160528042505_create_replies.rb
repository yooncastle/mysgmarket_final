class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      
      t.string :content
      t.string :user_id
      t.integer :post_id
      
      t.timestamps null: false
    end
  end
end
