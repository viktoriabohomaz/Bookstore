class Book < ApplicationRecord
  validates :title, :price, :count_in_stock, presence: true
  validates :title, length: { minimum: 5, maximum: 100 }
  validates :description, length: { minimum: 100, maximum: 1000, allow_blank: true }
  validates :count_in_stock, numericality: { only_integer: true, greater_than_or_equal_to: 1 }

  belongs_to :author
  belongs_to :category
  has_many :ratings
end
