class Order < ApplicationRecord
  include AASM
  has_many :order_items, dependent: :destroy
  belongs_to :user, optional: true
  belongs_to :credit_card, optional: true

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

  aasm column: :state do

    state :in_progress, :initial => true
    
    state :in_payment, :in_delivery, :delivered, :canceled
    
    event :pay do
      transitions :from => :in_progress, :to => :payment
    end
    event :process do
      transitions :from => :in_payment, :to => :in_delivery
    end
    event :deliver do
      transitions :from => :in_delivery, :to => :delivered
    end
    event :cancel do
      transitions :from => [:in_progress, :in_queue, :in_delivery, :delivered], :to => :canceled
    end
  end

end
