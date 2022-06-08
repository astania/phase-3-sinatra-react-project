class ReservationsController < ApplicationController

    get "/reservations" do 
        reservations = Reservation.all 
        reservations.to_json
    end 

    get "/reservations/:id" do 
        reservation = Reservation.find(params[:id])
        reservation.to_json
    end 

    post "/reservations" do 
        reservation = Reservation.new(params[:reservation])
        if reservation.save
            reservation.to_json
        else
            {errors: reservation.errors.full_messages}.to_json  
        end 
    end 

    delete "/reservations/:id" do 
        reservation = Reservation.find(params[:id])
        reservation.destroy
        reservation.to_json
    end 

    patch "/reservations/:id" do 
        reservation = Reservation.find(params[:id])
        reservation.update(params[:reservation])
        reservation.to_json
    end 
    
end 