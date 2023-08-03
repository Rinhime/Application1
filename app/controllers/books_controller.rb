class BooksController < ApplicationController
  
  
  def index
    @books = Book.all
    @book = Book.new(book_params)
  end

  def create
    @book = Book.new(book_params)
    if @book.save
    redirect_to '/'
    #詳細画面ができるまでトップに戻る
    else
      render :new
    end
  end
  
  def show
  end

  def edit
  end
  
  private
  #ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
