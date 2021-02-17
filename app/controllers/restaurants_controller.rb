class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(task_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def task_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end

# name: Faker::Restaurant.name,
# address: Faker::Address.street_address,
# phone_number: Faker::Company.duns_number
# category: Restaurant::CATEGORIES.sample
