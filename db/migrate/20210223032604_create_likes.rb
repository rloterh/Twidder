class CreateLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :likes do |t|
      t.integer :user_id
      t.integer :opinion_id

      t.timestamps
    end
    add_index :comments, :commentor_id
    add_index :likes, :opinion_id
    add_index :likes, :user_id
  end
end
