class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def  create
    book = Book.new(book_params)
    book.save
    redirect_to '/homes/show'
  end

  def show
    @books = Book.find(params[:id])
    
  end

  def edit
  
  end

 

  private
  def book_params
      params.require(:book).permit(:title, :body)
  end
end
