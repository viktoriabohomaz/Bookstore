class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :book

  validates_presence_of :review, :number
  validates_length_of :review, maximum: 500, allow_blank: true
  validates_numericality_of :number, only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5
end
