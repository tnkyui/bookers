class BooksController < ApplicationController
  def index
    @books = Books.all
  end

  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    book.save
  end

  def show
  end

  def edit
  end

  def destroy
  end

  private
  def book_params
    params.require(:title).permit(:title, :body)
  

end
