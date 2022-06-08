class ReservationsController < ApplicationController

    get "/reservations" do 
        reservations = Reservation.all 
        reservations.to_json
    end 

    get "/reservations/:id" do 
        reservation = Reservation.find(params[:id])
        reservation.to_json
    end 

    
end 