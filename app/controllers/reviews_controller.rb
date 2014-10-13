class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @book = Book.find(params[:book_id])
    @review.book_id = params[:book_id]
    if @review.save
      redirect_to @book
    else
      render "books/show"
    end
  end

  private

  def review_params
    params.require(:review).permit(:body, :rating)
  end
end
