class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.references :category
      t.string :code
      t.string :name
      t.string :merk
      t.string :material
      t.string :size
      t.string :color
      t.decimal :price, :precision => 18, :scale => 2, :default => 1
      t.string :description
      t.attachment :picture

      t.timestamps
    end
    add_index :products, :category_id
  end
end
