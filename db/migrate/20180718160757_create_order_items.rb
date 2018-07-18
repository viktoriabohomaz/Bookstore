class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|
      t.decimal :price, precision: 12, scale: 2, null: false
      t.integer :quantity, null: false

      t.timestamps
    end
  end
end
