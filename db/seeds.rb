10.times do
    User.create(
        username: Faker::Artist.name,
        password_digest:  123,
        email:  Faker::Artist.name+'@gmail.com',
        first_name: Faker::Artist.name
    )
end

5.times do
    Post.create(
        post: Faker::Lorem.paragraphs,
        image_url: Faker::LoremFlickr.pixelated_image(size: "50x60", search_terms: ['cats'])
    )
end

10.times do
    Comment.create(
        comment: Faker::Quote.famous_last_words,
        user_id: rand(1..9),
        post_id: rand(1..5)
    )
end

puts "Done seeding!"