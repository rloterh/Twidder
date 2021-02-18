class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.integer :author_id
      t.integer :opinion_id
      t.text :content

      t.timestamps
    end
  end
end
