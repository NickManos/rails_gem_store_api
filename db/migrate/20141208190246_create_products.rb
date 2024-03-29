class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.integer :shine
      t.decimal :price
      t.integer :rarity
      t.string :color
      t.integer :faces
      t.string :images
      t.string :category
      t.integer :category_id

      t.timestamps
    end
  end
end
