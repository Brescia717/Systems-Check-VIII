class ReviewsController < ApplicationController
  def new
    @review = Review.new(review_params)
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
