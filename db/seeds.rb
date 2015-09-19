# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
    User.create(email: "test@user",
              password: "password",
              password_confirmation: "password")


    Pin.create(Faker::Name.title, image: "http://media.giphy.com/media/tKNa3xBeOPDVe/giphy.gif", user_id: 1, created_at: Time.now)
    Pin.create(Faker::Name.title, image: "http://media.giphy.com/media/2ZOfyDFZGuat2/giphy.gif", user_id: 1, created_at: Time.now)
    Pin.create(Faker::Name.title, image: "https://media.giphy.com/media/bqKHVb9Vltu6c/giphy.gif", user_id: 1, created_at: Time.now)
    Pin.create(Faker::Name.title, image: "http://media.giphy.com/media/cLtvKDcQYkSRO/giphy.gif", user_id: 1, created_at: Time.now)
    Pin.create(Faker::Name.title, image: "http://media.giphy.com/media/77EJElk3gnq0M/giphy.gif", user_id: 1, created_at: Time.now)
    Pin.create(Faker::Name.title, image: "https://media.giphy.com/media/JyeJQABlkPohW/giphy.gif", user_id: 1, created_at: Time.now)
    Pin.create(Faker::Name.title, image: "https://media.giphy.com/media/dkjgw5RD13gRi/giphy.gif", user_id: 1, created_at: Time.now)
    Pin.create(Faker::Name.title, image: "https://media.giphy.com/media/R7j5OpXWq1i8M/giphy.gif", user_id: 1, created_at: Time.now)
    Pin.create(Faker::Name.title, image: "http://media.giphy.com/media/3o85xEdppSq2M95CPC/giphy.gif", user_id: 1, created_at: Time.now)
    Pin.create(Faker::Name.title, image: "https://media.giphy.com/media/8U2TdDCDtxQdy/giphy.gif", user_id: 1, created_at: Time.now)
    Pin.create(Faker::Name.title, image: "https://media.giphy.com/media/xTiTnud0mno9BMF5vi/giphy.gif", user_id: 1, created_at: Time.now)
    Pin.create(Faker::Name.title, image: "http://giphy.com/gifs/steve-carell-anchorman-movie-WywrPwDi0wDIY", user_id: 1, created_at: Time.now)



    User.create(email: "test2@user.com",
    password: "password",
    password_confirmation: "password")
