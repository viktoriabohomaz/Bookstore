class ChangeColumnOptionsInOrdersTable < ActiveRecord::Migration[5.2]
  def up
    change_column(:orders, :state, :string, default: :in_progress)
    change_column(:orders, :total_prise, :decimal, precision: 12, scale: 2, default: 0)
    change_column(:order_items, :quantity, :integer, default: 0)
    change_column(:order_items, :price, :decimal, precision: 12, scale: 2, default: 0)
  end

  def down
    change_column(:orders, :state, :string)
    change_column(:orders, :total_prise, :decimal, precision: 12, scale: 2 )
    change_column(:order_items, :quantity, :integer)
    change_column(:order_items, :price, :decimal, precision: 12, scale: 2)
  end

end
