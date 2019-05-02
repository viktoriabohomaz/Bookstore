class BookSearchService
  attr_reader :params
  def initialize(params)
    @params = params
  end

  def call
    init_collection
    sort_by_category
    filter
    @books
  end

 def sort_by_category
   return if params[:category_id].blank?

   @books = Book.joins(:book_categories).where(book_categories: { category_id: params[:category_id] })
 end

  def filter
   return if params[:filter].blank?
   return unless params[:filter].in?(Book::AVAILABLE_FILTERS)
   
   @books = @books.public_send(params[:filter])
  end

  def init_collection
    @books = Book.all.includes(:author)
  end
end
