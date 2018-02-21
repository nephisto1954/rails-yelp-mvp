class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
  end

  def create
    @review = Review.new(review_params)
    @review.save
  end

  private

  def review_params
    params.require(:review).permit(:name, :adress, :category)
  end
end
