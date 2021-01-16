class AddIndexToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :pic, :text
    add_column :users, :coverImg, :text
    add_index :users, :username, unique: true
  end
end
