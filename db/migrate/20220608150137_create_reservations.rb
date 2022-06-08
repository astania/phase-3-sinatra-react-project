class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.date :date
      t.time :time
      t.integer :number_of_guests
      t.integer :restaurant_id 
      t.integer :guest_id
      t.timestamps
    end 
  end
end
