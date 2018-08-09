class Category < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  has_many :book_categories
  has_many :books, through: :book_categories
end
