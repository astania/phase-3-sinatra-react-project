puts "🌱 Seeding spices..."

# Seed your database here

50.times do 
    Guest.create(
        username: Faker::Kpop.girl_groups,
        password: Faker::Kpop.solo,
        name: Faker::Name.name 
    )
end 

images = ["https://i.picsum.photos/id/308/500/500.jpg?hmac=4Rp8DnIaA2wvmDlz3SzUZEfcMNWSfvN5vPDiTfSDfOY", "https://i.picsum.photos/id/376/500/500.jpg?hmac=T32nkxwsxIyVf_KzAw9mqHfcl36epPedy9QORnJGoTM", "https://i.picsum.photos/id/254/500/500.jpg?hmac=8sFZjLHnHZ_ttdAXWqiL4Seejwf4vOFarsBeQGJZkpU", "https://i.picsum.photos/id/171/500/500.jpg?hmac=MCXIAr8YFm04Dt5GrbpOYzwu_60yAoQ-SIAZIRZU-So", "https://i.picsum.photos/id/395/500/500.jpg?hmac=sDyOxcZuKzogaz3HcaBSf2NZAUQNkkSyMLWx5n_31rM", "https://i.picsum.photos/id/630/500/500.jpg?hmac=_e8WfDqIZfqQ0doa8XEoc4JEw2SQq2ud7QplFmfS6Ag", "https://i.picsum.photos/id/851/500/500.jpg?hmac=8qtjAOEbbDU4dZvNe0SQ5dAk0iv-zHze-29LZq1Amno", "https://i.picsum.photos/id/426/500/500.jpg?hmac=3O4ddwHib-SYk3OFHmK7UiTJIakIsl08MPUoFwGRcoM", "https://i.picsum.photos/id/281/500/500.jpg?hmac=Pk0JvyTj1ELJUbpDPNK6zC8fOgGCo_WXluHIufZO_4s", "https://i.picsum.photos/id/1062/500/500.jpg?hmac=kHOfZuXyrJW6ZJIn9zWKezvuyLPxht6mpcwmRyNChvU", "https://i.picsum.photos/id/347/500/500.jpg?hmac=-j1wmqVvelk-WwFb-vkIE9iRr4mER4iHngc1kXQNWWU", "https://i.picsum.photos/id/552/500/500.jpg?hmac=xhz_UnakbIYc1wvTaAxKJt7MvTl3ykIrcPX9PEfFwN8", "https://i.picsum.photos/id/428/500/500.jpg?hmac=PNPaSXZc0Jrnf2jmGPFh9skpsE5srKJTBGF9vXhJdvs", "https://i.picsum.photos/id/56/500/500.jpg?hmac=0DvH8xze786PUiirUhg47De5_919CfAWh4DPNszzPQg", "https://i.picsum.photos/id/473/500/500.jpg?hmac=P__oi_XX4pWMJPlt1IJOqvsPEG7FT4-xQ6Msu55c2io", "https://i.picsum.photos/id/361/500/500.jpg?hmac=FfNKBFx3Z0iruweM00k67IEaYPjvkZFhOTSl3MWSH9I", "https://i.picsum.photos/id/922/500/500.jpg?hmac=as7OAm-ZjDbrn3-nnuweHDrDDqKCOIMDQtyL99NNDhk", "https://i.picsum.photos/id/274/500/500.jpg?hmac=GU1hXd9O1g6VUsMmhW3U9Rpd5LWc1hZjs8-n6JV_yI4", "https://i.picsum.photos/id/884/500/500.jpg?hmac=IviKntbKgmD9S_rfCKPNXN_DEojYj6QUOE3L-eGsRH0", "https://i.picsum.photos/id/994/500/500.jpg?hmac=ZrfJWqVKx5MYAH42dVs099DACcOQF3a3-SFXjOhtcMk", "https://i.picsum.photos/id/909/500/500.jpg?hmac=jfS9jLCYVgHM_3hZgM2DtS5ukZ0M8Juan_rku8N4OEE", "https://i.picsum.photos/id/197/500/500.jpg?hmac=Wkybe1s_1ui7V5n9qGWOWyK3PCpCinm8wocgS4T4YF4", "https://i.picsum.photos/id/955/500/500.jpg?hmac=z5G1Rp9KWbQ6DQT1S7yC60_teIQuM50ckiuxRVQaFYQ", "https://i.picsum.photos/id/398/500/500.jpg?hmac=Uz9jAqx6NJza9-FM-mGl8N6eAvbfGnajh3wQA0Iml7U", "https://i.picsum.photos/id/434/500/500.jpg?hmac=FPqmawt8p20vxeYkoiBbWG1qVXM5vlSKIRwqu06IYrk"]

20.times do 
    Restaurant.create(
        username: Faker::Kpop.boy_bands,
        password: Faker::Kpop.solo,
        restaurant_name: Faker::Restaurant.name,
        cuisine_type: Faker::Restaurant.type,
        image_url: images[rand(0..24)],
        capacity: rand(10..50)
    )

end 

times = ["11:00", "11:30", "12:00", "12:30","1:00", "1:30", "2:00", "2:30", "3:00", "3:30", "4:00", "4:30", "5:00", "5:30", "6:00", "6:30", "7:00", "7:30", "8:00", "8:30", "9:00", "9:30"]

100.times do 
    Reservation.create(
        date: Faker::Date.between(from: '2022-06-01', to: '2024-12-31'),
        time: times[rand(0..21)],
        number_of_guests: rand(2..12),
        restaurant_id: rand(1..20),
        guest_id: rand(1..50)
    )
end 


puts "✅ Done seeding!"

