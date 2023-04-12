class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def  create
    book = Book.new(book_params)
    flash[:notice] = "Book was successfully created."
    book.save
    redirect_to book_path(book.id)
  end

  def show
    @book = Book.find(params[:id])

  end

  def edit
    @book = Book.find(params[:id])

  end
  def update
    book = Book.find(params[:id])
    book.update(book_params)
    flash[:notice] = "book was successfully updated."
    redirect_to book_path(book.id)
  end
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to '/books/index'
  end

  private
  def book_params
      params.require(:book).permit(:title, :body)
  end
end
