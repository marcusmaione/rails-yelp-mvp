class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit]
  # GET /restaurants
  def index
    @restaurants = Restaurant.all
  end

  # GET /restaurants/:id
  def show
  end

  # GET /restaurants/new
  def new
    @restaurant = Restaurant.new
  end

  # POST /restaurants
  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  # GET /restaurants/:id/edit
  def edit
  end

  # PATCH /restaurants/:id
  # def update
  #   @restaurant.update(restaurant_params)
  #   redirect_to restaurants_path
  # end

  # DELETE /restaurants/:id
  # def destroy
  #   @restaurant.destroy
  #   # no need for app/views/restaurants/destroy.html.erb
  #   redirect_to restaurants_path
  # end

private
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
