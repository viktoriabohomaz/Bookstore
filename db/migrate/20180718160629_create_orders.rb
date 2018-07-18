class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.decimal :total_prise, precision: 12, scale: 2, null: false
      t.string :state, null:false

      t.timestamps
    end
  end
end
