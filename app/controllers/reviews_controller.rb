class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @book = Book.find(params[:book_id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def show
  end

  private
  def review_params
    params.require(:book).permit(:body, :rating)
  end
end
