class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    find_resto
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.create(resto_params)
    respond_to do |format|
      if @restaurant.save
        format.html { redirect_to @restaurant, notice: 'Restaurant was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  private

  def resto_params
    return params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

  def find_resto
    @restaurant = Restaurant.find(params[:id])
  end

end
