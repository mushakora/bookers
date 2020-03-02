class BooksController < ApplicationController
  def index
  	  @book = Book.new
  	  @books = Book.all
  end

  def create
      @book = Book.new(book_params)
      @books = Book.all
  	  if @book.save
        flash[:notice] = 'successfully'
        redirect_to book_path(@book.id)
      else
        render 'index'
      end
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
      flash[:notice] = 'successfully'
      redirect_to book_path(book.id)
  end

  def destroy
      book = Book.find(params[:id])
      book.destroy
      redirect_to index_book_path
  end

  private
    def book_params
        params.require(:book).permit(:title, :body)
    end
end