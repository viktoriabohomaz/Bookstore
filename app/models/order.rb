class Order < ApplicationRecord
  has_many :order_items
  belongs_to :user

  def add_book(book_params)
    current_item = order_items.find_by(book_id: book_params[:book_id])

    if current_item
      current_item.quantity += book_params[:quantity].to_i
      current_item.save
    else
      order_items.create(
          book_id: book_params[:book_id],
          quantity: book_params[:quantity]
      )
    end
  end
end
