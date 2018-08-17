class Book < ApplicationRecord
  validates :title, :price, :count_in_stock, presence: true
  validates :title, length: { minimum: 5, maximum: 100 }
  validates :description, length: { minimum: 100, maximum: 1000, allow_blank: true }
  validates :count_in_stock, numericality: { only_integer: true, greater_than_or_equal_to: 0}

  belongs_to :author
  has_many :book_categories
  has_many :categories, through: :book_categories
  has_many :ratings

  mount_uploader :cover, CoverUploader

  scope :newest_book, -> { order(created_at: :asc) }
  scope :latest_book, -> { order(created_at: :desc) }
  scope :asc_title, -> { order(title: :asc) }
  scope :desc_title, -> { order(title: :desc) }
  scope :lowest_price, -> { order(price: :asc) }
  scope :highest_price, -> { order(price: :dessc) }
end
