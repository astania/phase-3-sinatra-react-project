puts "🌱 Seeding spices..."

# Seed your database here

10.times do 
    Guest.create(
        username: Faker::Kpop.girl_groups,
        password: Faker::Kpop.solo,
        name: Faker::Name.name 
    )
end 

images = ["https://pixabay.com/get/g63f9d2f26756c7431aac98cfdff42770be706b9a0ca9c3b583d56a8902f461bdd1bed36f87e86afe772812a81882995f_1280.jpg", 
    "https://pixabay.com/get/gbdcba47e09e7163feaef3637b4dea3b4c1809115f1c25a37b4d13bf27faa9b49c112e01cc3752245283b64c2a8501c0a_1280.jpg", 
    "https://pixabay.com/get/g54b8536713b8ed077c0dc78fb0932659d9810904bfbd261f2cc64735be64c0fb8e42bbe828cf18d1bba2e7866915f2e3_1280.jpg", 
    "https://pixabay.com/get/gb14741da07f98cec5cbbb38f61a6a979993403bab932d603358761f41d44271eab70c7f38380af6584de1fde398ecf71_1280.jpg", 
    "https://pixabay.com/get/g9475d1b583dfd52cbb4be809226440ef1906d6de8ee64beabe5f533c3db1be2ef296c1779d9910c568357e3ff43a6652_1280.jpg", 
    "https://pixabay.com/get/g89f813a9304dcdfd809a4cee7efad9593dde8c9c962f02666bbf7f94a9755e11992b42ade53cafcfd20926daee979c33_1280.jpg", 
    "https://pixabay.com/get/g3df0409c108233b841f028a215c0779e8b72cfb7a4c7066b60c6fb984176e6cca2b750ded0f220a6780f69c7b1c7057f_1280.jpg", 
    "https://pixabay.com/get/g4d06005b45f57ce31b7ef9a605b28ab0abb78520cd694276add54e1ab088bbefae59477e942341f159c21112838dc22b_1280.jpg", 
    "https://pixabay.com/get/gb07648448ef1953b3cee33618b0844601e284c5790563abbee5561426a8b12e1748fe39e0d33b5c48920e7349a75b828_1280.jpg", 
    "https://pixabay.com/get/gc48a919ac7eb0f6809b4864dfd88bc5d6fd0cd5ff0ff89f93203ead91e30e6b1893cb07126d0db3e7f7802c26e8bb358_1280.jpg", 
    "https://pixabay.com/get/gc87ff1b5f5afd7c668705515c59156338b91ca52ede50625f18d8669852edd9ff47897029cbdd93bd4a76a49972871f0_1280.jpg", 
    "https://pixabay.com/get/g97b03a94644f9e168d7faa25e503502f15554177e1c2c7ce76729a1e4ecd0d11b7b2bcda4841b7911317d17865b03e88_1280.jpg", 
    "https://pixabay.com/get/g305f44cb58f7df06591067cbe2d13c112a661c8f50c438bf3d80e1a61e6acaf980e600212d1a544953265064fdfa7afd_1280.png", 
    "https://pixabay.com/get/g28b604df3ab934f6ab0782df28ab92cafbeadd8310279c48711fcc12dfc25cfd23eaa88097adc1f03ffff79b72f3e4aa_1280.jpg", 
    "https://pixabay.com/get/ge503b17659fe6e4fbef89cffe09b199dcb9d61b52c89c57c0fa73cbd513fa4d26d51dfc389fb661bf980c3e78367dd8e_1280.jpg",  
    "https://pixabay.com/get/gcf8b974df5e34857a88ec2657b2995f07219d39e6823dd87233c1bb1ec965b3e0ae79204efcfbab62b3d8b51302f5156_1280.jpg", 
    "https://pixabay.com/get/gc29f386fbd8f0321b7232256c2dbc693f6dfce0d71077fe98fe374c07f56149ff16d18c25e22d1e0ecc065a0be9ad967_1280.jpg", 
    "https://pixabay.com/get/g6227e36d042c5401342710ab871622170e54573910e15d62079ebab668c8c1b4df2595d027030c60ead5fad19d3537b8_1280.jpg", 
    "https://pixabay.com/get/gfe1b76dfa178624ce6ed1249a122747d2ea52009385ff38a01960c4e662b34fccf0a8f9bb4a76a06513eb0f6dd28436c_1280.jpg", 
    "https://pixabay.com/get/gaf55bd71b47a9b572914d70ac08dcc04c1e9fb785cfd2b5a820f1ea261880376b4032c93584f558e0ef54a0092421bd8_1280.jpg"    
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

