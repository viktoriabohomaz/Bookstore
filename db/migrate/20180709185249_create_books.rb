class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.text :description
      t.decimal :price, precision: 6, scale: 2, null: false
      t.integer :count_in_stock, null: false
      t.references :author
      t.references :category

      t.timestamps
    end
  end
end
