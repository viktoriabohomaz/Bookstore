class AddReferencesIntoTables < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :credit_card
    add_reference :orders, :user
    add_reference :credit_cards, :user
    add_reference :addresses, :user
    add_reference :order_items, :order
    add_reference :order_items, :book
  end
end
