class BooksController < ApplicationController


  def create
    book=Book.new(book_params)
    book.save
    redirect_to '/books'
  end


  def index
    @books=Book.all
    @book=Book.new
  end


  def show
    @book=Book.find(params[:id])
  end


  def edit
    
  end


private
  # ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
