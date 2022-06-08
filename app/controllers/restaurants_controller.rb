class RestaurantsController < ApplicationController

    get "/restaurants" do 
        restaurants = Restaurant.all
        restaurants.to_json
    end 

    get "/restaurants/:id" do 
        restaurant = Restaurants.find(params[:id])
        restaurant.to_json
    end 

    post "/restaurants" do 
        restaurant = Restaurant.new(params[:restaurant])
        if restaurant.save
            restaurant.to_json
        else
            {errors: restaurant.errors.full_messages}.to_json  
        end 
    end 
end 