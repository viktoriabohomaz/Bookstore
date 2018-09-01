class BookCategory < ApplicationRecord
  belongs_to :book
  belongs_to :category, counter_cache: :books_count
end
