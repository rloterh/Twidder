class AddIndexToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :photo, :string
    add_column :users, :cover_img, :string
    add_index :users, :username, unique: true
  end
end
