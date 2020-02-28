class PostsController < ApplicationController

  def new
      @book = Book.new
  end

  def create
      book = Book.new(book_params)
      book.save
      redirect_to '/posts/index'
  end

  def index
  	  @books = Book.all
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
  	  redirect_to post_path(book.id)
  end

  def destroy
  	  book = Book.find(params[:id])
  	  book.destroy
  	  redirect_to posts_path
  end

  def book_params
       params.require(:book).permit(:title, :body)
  end
end
