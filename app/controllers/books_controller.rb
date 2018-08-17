class BooksController < ApplicationController
  def index
    @books = Book.all.decorate
  end

  def show
    @book = Book.find(params[:id]).decorate
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :cover, :categories, :price)
  end
end
