class CreditCard < ApplicationRecord
  belongs_to :user
  has_many :orders
 
  validates_presence_of :number, :cvv, :number, :card_name, :exp_month, :exp_year
  validates_length_of :card_name, maximum: 50
  validates_numericality_of :cvv, only_integer: true, greater_than_or_equal_to: 3, less_than: 4
  validates_format_of :number,  with: /\A[0-9]\d+\z/
  validates_format_of :exp_month,  with: /\A(0?[1-9]|1[012])\z/
  validates_numericality_of :exp_year, only_integer: true, greater_than_or_equal_to: 18
end
