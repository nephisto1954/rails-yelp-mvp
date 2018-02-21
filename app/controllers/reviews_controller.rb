class ReviewsController < ApplicationController
before_action :set_restaurant


  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:restaurant_id, :content, :rating)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

end
