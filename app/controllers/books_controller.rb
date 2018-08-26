class BooksController < ApplicationController
  decorates_assigned :book, :books
  def index
    if params[:category].blank?
      @books = Book.all.decorate
    else
      @category_id = Category.find_by(title: params[:categories]).id
      @books = Book.where(categories.ids.include(@category_id)).decorate
    end
  end

  def show
    @book = Book.find(params[:id]).decorate
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :cover, :categories, :price)
  end
end
