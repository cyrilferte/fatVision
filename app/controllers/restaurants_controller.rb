class RestaurantsController < ApplicationController
    before_action :random
    
    def random
         @all = Restaurant.all.count
        if @all > 0
           
            @random = Restaurant.find(rand(1..@all)) 
        else
            @random = "none"
        end
    end
    def index

        @restaurants = Restaurant.all
        
    end

  def show

    @restaurant = Restaurant.find(params[:id])
    require 'uri'
   @adresse = URI.encode(@restaurant.adresse) if @restaurant.adresse
  end

  def new
    @restaurant = Restaurant.new
  end
  def create
    @restaurant = Restaurant.new(restaurant_params)
   if @restaurant.save
    redirect_to restaurants_path
   else
     render :new
   end
  end

  def edit
    @restaurant = Restaurant.find(params[:id])

  end
  def update
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.update(restaurant_params)
      redirect_to restaurants_path
    else
      render :edit
    end
  end

  def destroy
     @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :link, :comment, :adresse)
  end
end
