class GuestsController < ApplicationController
    
    get "/guests" do 
        guests = Guest.all
        guests.to_json
    end 

    get "/guests/:id" do 
        guest = Guest.find(params[:id])
        guest.to_json
    end 

    post "/guests" do 
        guest = Guest.new(params[:guest])
        if guest.save
            guest.to_json
        else
            {errors: guest.errors.full_messages}.to_json  
        end 
    end 
    
end 