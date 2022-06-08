class RestaurantsController < ApplicationController

    get "/restaurants" do 
        restaurants = Restaurant.all
        restaurants.to_json
    end 

    get "/restaurants/:id" do 
        restaurant = Restaurants.find(params[:id])
        restaurant.to_json
    end 
end 