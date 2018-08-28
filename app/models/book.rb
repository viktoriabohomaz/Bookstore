class Book < ApplicationRecord
  validates_presence_of :title, :price, :count_in_stock
  validates_length_of  :title,  minimum: 5, maximum: 100
  validates_length_of :description, minimum: 100, maximum: 1000, allow_blank: true
  validates_numericality_of  :count_in_stock, only_integer: true, greater_than_or_equal_to: 0

  belongs_to :author
  has_many :book_categories
  has_many :categories, through: :book_categories
  has_many :ratings

  mount_uploader :cover, CoverUploader

  AVAILABLE_FILTERS = %w[newest_book asc_title desc_title asc_price desc_price]
  scope :newest_book, -> { order(created_at: :asc) }
  scope :asc_title, -> { order(title: :asc) }
  scope :desc_title, -> { order(title: :desc) }
  scope :asc_price, -> { order(price: :asc) }
  scope :desc_price, -> { order(price: :desc) }
end
