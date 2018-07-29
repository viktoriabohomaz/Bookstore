class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.text :review
      t.integer :number
      t.references :book
      t.references :user

      t.timestamps
    end
  end
end
