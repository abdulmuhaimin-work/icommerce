class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :slug
      t.string :name
      t.timestamp :deleted_at

      t.timestamps
    end
  end
end
