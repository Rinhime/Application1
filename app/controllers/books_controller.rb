class BooksController < ApplicationController
  
  
  def index
    @books = Book.all
    @book = Book.new
  end

  def create
    
    book = Book.new(params[:id])
    
    #if @book.save
    book.save
    redirect_to '/books/:id'
    #詳細画面ができるまでトップに戻る
    #else
      #render :new
    
  end
  
  def show
    @book = Book.find(params[:id])
  end

  def edit
  end
  
  private
  #ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
