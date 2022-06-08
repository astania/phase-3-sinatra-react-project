class GuestsController < ApplicationController
    
    get "/guests" do 
        guests = Guest.all
        guests.to_json
    end 

    get "/guests/:id" do 
        guest = Guest.find(params[:id])
        guest.to_json
    end 
    
end 