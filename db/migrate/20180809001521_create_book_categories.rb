class CreateBookCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :book_categories do |t|
      t.belongs_to :book, foreign_key: true, null:false
      t.belongs_to :category, foreign_key: true, null:false

      t.timestamps
    end
  end
end
