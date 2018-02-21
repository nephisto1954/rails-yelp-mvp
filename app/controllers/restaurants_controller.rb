class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(params[:id])
    @restaurant.save
    redirect_to restaurants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :adress, :category)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

end
