class CreateOpinions < ActiveRecord::Migration[6.1]
  def change
    create_table :opinions do |t|
      t.integer :authorId
      t.text :text

      t.timestamps
    end
  end
end
