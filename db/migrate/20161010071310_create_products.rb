class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.references :category, foreign_key: true
      t.string :slug
      t.string :name
      t.string :brand
      t.text :description
      t.decimal :price, precision: 12, scale: 3
      t.timestamp :deleted_at

      t.timestamps
    end
  end
end
