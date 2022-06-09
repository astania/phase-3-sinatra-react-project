class GuestsController < ApplicationController
    
    get "/guests" do 
        guests = Guest.all
        guests.to_json(include: [reservations: {include: { restaurant: { only: [:id, :restaurant_name, :cuisine_type, :image_url ]}}}])
    end 

    get "/guests/:id" do 
        guest = Guest.find(params[:id])
        guest.to_json(include: [reservations: {include: { restaurant: { only: [:id, :restaurant_name, :cuisine_type, :image_url ]}}}])
    end 

    post "/guests" do 
        guest = Guest.new(params[:guest])
        if guest.save
            guest.to_json(include: [reservations: {include: { restaurant: { only: [:id, :restaurant_name, :cuisine_type, :image_url ]}}}])
        else
            {errors: guest.errors.full_messages}.to_json  
        end 
    end 

    delete "/guests/:id" do 
        guest = Guest.find(params[:id])
        guest.destroy
        guest.to_json
    end 
    
    patch "/guests/:id" do 
        guest = Guest.find(params[:id])
        guest.update(params[:guest])
        guest.to_json(include: [reservations: {include: { restaurant: { only: [:id, :restaurant_name, :cuisine_type, :image_url ]}}}])
    end 
end 