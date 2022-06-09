puts "🌱 Seeding spices..."

# Seed your database here

50.times do 
    Guest.create(
        username: Faker::Kpop.girl_groups,
        password: Faker::Kpop.solo,
        name: Faker::Name.name 
    )
end 

20.times do 
    Restaurant.create(
        username: Faker::Kpop.boy_groups,
        password: Faker::Kpop.solo,
        restaurant_name: Faker::Restaurant.name,
        cuisine_type: Faker::Restaurant.type,
        image_url: xx,
        capacity: rand(10..50)
    )

end 

times = ["11:00", "11:30", "12:00", "12:30","1:00", "1:30", "2:00", "2:30", "3:00", "3:30", "4:00", "4:30", "5:00", "5:30", "6:00", "6:30", "7:00", "7:30", "8:00", "8:30", "9:00", "9:30"]

100.times do 
    Reservation.create(
        date: Faker::Date.between(from: '2022-06-01', to: '2024-12-31')
        time: times[rand(0..21)]
        number_of_guests: rand(2..12)
        restaurant_id: rand(1..20)
        guest_id: rand(1..50)
    )
end 


puts "✅ Done seeding!"

