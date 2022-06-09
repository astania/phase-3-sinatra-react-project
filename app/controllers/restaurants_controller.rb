class RestaurantsController < ApplicationController

    get "/restaurants" do 
        restaurants = Restaurant.all
        restaurants.to_json(include: [reservations: {include: { guest: { only: [:name ]}}}])
    end 

    get "/restaurants/:id" do 
        restaurant = Restaurants.find(params[:id])
        restaurant.to_json(include: [reservations: {include: { guest: { only: [:name ]}}}])
    end 

    post "/restaurants" do 
        restaurant = Restaurant.new(params[:restaurant])
        if restaurant.save
            restaurant.to_json(include: [reservations: {include: { guest: { only: [:name ]}}}])

        else
            {errors: restaurant.errors.full_messages}.to_json  
        end 
    end 

    delete "/restaurants/:id" do 
        restaurant = Restaurant.find(params[:id])
        restaurant.destroy
        restaurant.to_json(include: [reservations: {include: { guest: { only: [:name ]}}}])

    end 

    patch "/restaurants/:id" do 
        restaurant = Restaurant.find(params[:id])
        restaurant.update(params[:restaurant])
        restaurant.to_json(include: [reservations: {include: { guest: { only: [:name ]}}}])
    end 
end 