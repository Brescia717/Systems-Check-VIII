class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      # flash[:success] = "Your book as been successfully added!"
      redirect_to @book
    else
      # flash[:alert] = "Your book was not saved. Please try again."
      render "new"
    end
  end

  def edit
  end

  def destroy
  end

  def show
    @book = Book.find(params[:id])
    @review = Review.new
  end

  private
  def book_params
    params.require(:book).permit(:title, :author, :year, :description, :category)
  end
end
