puts "🌱 Seeding spices..."

# Seed your database here

10.times do 
    Guest.create(
        username: Faker::Kpop.girl_groups,
        password: Faker::Kpop.solo,
        name: Faker::Name.name 
    )
end 

images = ["https://i.picsum.photos/id/455/500/500.jpg?hmac=SCsHyv0pR-quT108uA_zG-vMHbKd-s_rAtCqQuSRUOc", 
    "https://i.picsum.photos/id/878/500/500.jpg?hmac=jrsXtoZttXpgs9ie43un2PsJVpe4evGLGDVpVfUXJFc", 
    "https://i.picsum.photos/id/818/500/500.jpg?hmac=gm6k4It137OUao6Tabm1Dwkiu7WE-9qWiPMW42phI_k", 
    "https://i.picsum.photos/id/387/500/500.jpg?hmac=1QmctCe6JuOK66mhfGHPpkRC_hm5myYZaTU3TffRId4", 
    "https://i.picsum.photos/id/389/500/500.jpg?hmac=qzKF4wApIjQCQMW56_HIPmJt8cyQrLkdEeoWahTEDjM", 
    "https://i.picsum.photos/id/366/500/500.jpg?hmac=3FtB6nxy3ATkMs4gGDZs80_JrjH8CqVrN63TR9ZtmTo", 
    "https://i.picsum.photos/id/294/500/500.jpg?hmac=CsjfejV_JjGbh6mQuU-KmDc3ikbGcoEm9QjK39nptGE", 
    "https://i.picsum.photos/id/679/500/500.jpg?hmac=mp1N895mbpveYNVIgO4pQ9-pCfxdwBs2eXmwoiDjLo8", 
    "https://i.picsum.photos/id/368/500/500.jpg?hmac=mS9ABneRrvrDwACK12cmwbPwo4iPtj_yOj9AoiYBADE", 
    "https://i.picsum.photos/id/979/500/500.jpg?hmac=APiz6C4YsDCixjtANGUI8prcgf-UolUFdkcoFkNSPfI", 
    "https://i.picsum.photos/id/862/500/500.jpg?hmac=60wKtDjaw_q3sAe-knvHXPsQcfGdObOi4UkYYlS_gHw", 
    "https://i.picsum.photos/id/634/500/500.jpg?hmac=kGNo0Zf7xbVmQ8QK-fHxTf_3fCyAhTMac3tyWPQ83mw", 
    "https://i.picsum.photos/id/69/500/500.jpg?hmac=Yy0TZMsvfneh3zFqRAITH1q2JXAeOglipT_y4I9J3rM", 
    "https://i.picsum.photos/id/944/500/500.jpg?hmac=v4PRAAuUQlDmy3UMkqoNz5mZ25xwCzxti-5RVgN23sI", 
    "https://i.picsum.photos/id/906/500/500.jpg?hmac=wakHCOKPVI4mdPJOLfJF2e5DrO3I3OKPzdygiMGc9jQ", 
    "https://i.picsum.photos/id/1079/500/500.jpg?hmac=iAZKAEg5Ja-3uQWuHj6jLDC31WsSScvEAy8F_R7BtBs", 
    "https://i.picsum.photos/id/980/500/500.jpg?hmac=xxuslS3B6e6w4Bi3zur1mfICYM9HBN9Q1FvzYvG8mZ0", 
    "https://i.picsum.photos/id/276/500/500.jpg?hmac=GPbefXd4zHbb0Fo-vdC5bBfO9NEVe4aswCwfAWdZkS8", 
    "https://i.picsum.photos/id/940/500/500.jpg?hmac=cEdPizwObT0Au8mlOT-o2I3jn8os5HnQYzqmdLVynGc", 
    "https://i.picsum.photos/id/47/500/500.jpg?hmac=oR6Yd_hDK4t0WwKQhjlllnB3KKSmXv3qKyvjl6X3UD4"
]

10.times do 
    Restaurant.create(
        username: Faker::Kpop.boy_bands,
        password: Faker::Kpop.solo,
        restaurant_name: Faker::Restaurant.name,
        cuisine_type: Faker::Restaurant.type,
        image_url: images[rand(0..19)],
        capacity: rand(10..50)
    )

end 

times = ["11:00", "11:30", "12:00", "12:30","1:00", "1:30", "2:00", "2:30", "3:00", "3:30", "4:00", "4:30", "5:00", "5:30", "6:00", "6:30", "7:00", "7:30", "8:00", "8:30", "9:00", "9:30"]

50.times do 
    Reservation.create(
        date: Faker::Date.between(from: '2022-06-01', to: '2024-12-31'),
        time: times[rand(0..21)],
        number_of_guests: rand(2..12),
        restaurant_id: rand(1..10),
        guest_id: rand(1..10)
    )
end 


puts "✅ Done seeding!"

