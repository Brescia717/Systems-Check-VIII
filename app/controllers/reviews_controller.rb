class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @book = Book.find(params[:book_id])
    @review.book_id = params[:book_id]
    if @review.save
      # flash[:success] = "You have successfully created a review."
      redirect_to @book
    else
      # flash[:alert] = "Your review was not added successfully. Please try again."
      render "books/show"
    end
  end

  private
  def review_params
    params.require(:review).permit(:body, :rating)
  end
end
