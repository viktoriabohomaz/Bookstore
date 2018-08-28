class OrderItemsController < ApplicationController

  def create
    current_order.add_book(params)
    if current_order.save
      redirect_to request.referer
    else
      flash[:error] = 'There was a problem adding this item to your cart.'
      redirect_to book_path
    end
  end
end
