class AddIndexToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :photo, :text
    add_column :users, :cover_img, :text
    add_index :users, :username, unique: true
  end
end
