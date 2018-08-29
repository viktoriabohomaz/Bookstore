class ChangeColumnOptionsInOrdersTable < ActiveRecord::Migration[5.2]
  def change
    change_column(:orders, :state, :string, default: :in_progress)
    change_column(:orders, :total_prise, :decimal, default: 0)
    change_column(:order_items, :quantity, :integer, default: 0)
    change_column(:order_items, :price, :decimal, default: 0)
  end
end
