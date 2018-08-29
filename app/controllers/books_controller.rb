class BooksController < ApplicationController
  before_action :set_collection
  load_and_authorize_resource
  decorates_assigned :book, :books

  private

  def book_params
    params.require(:book).permit(:title, :author, :cover, :categories, :price, :quantity)
  end

  def set_collection
    @books = BookSearchService.new(params).call
  end
end
