# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
10.times do
  user = User.create(email: Faker::Internet.email,
              password: "password",
              password_confirmation: "password",


  10.times do
    Pins.create(image: "http://media.giphy.com/media/wVJOkiGy2AYIE/giphy.gif")
    squawk.created_at = Faker::Time.between(1000.days.ago, DateTime.now)
    user.pins << pin

    Pins.create(image: "http://media.giphy.com/media/tKNa3xBeOPDVe/giphy.gif")
    squawk.created_at = Faker::Time.between(1000.days.ago, DateTime.now)
    user.pins << pin

    Pins.create(image: "http://media.giphy.com/media/13hNDbv34oogCc/giphy.gif")
    squawk.created_at = Faker::Time.between(1000.days.ago, DateTime.now)
    user.pins << pin

    Pins.create(image: "http://media.giphy.com/media/FKzUvE0VjW1fq/giphy.gif")
    squawk.created_at = Faker::Time.between(1000.days.ago, DateTime.now)
    user.pins << pin

    Pins.create(image: "http://media.giphy.com/media/zHhOWwac0lPR6/giphy.gif")
    squawk.created_at = Faker::Time.between(1000.days.ago, DateTime.now)
    user.pins << pin

    Pins.create(image: "http://media.giphy.com/media/XcTFzOcRuoQ6Y/giphy.gif")
    squawk.created_at = Faker::Time.between(1000.days.ago, DateTime.now)
    user.pins << pin

    Pins.create(image: "http://i.imgur.com/CqGoEKa.gif")
    squawk.created_at = Faker::Time.between(1000.days.ago, DateTime.now)
    user.pins << pin

    Pins.create(image: "http://media.giphy.com/media/bqKHVb9Vltu6c/giphy.gif")
    squawk.created_at = Faker::Time.between(1000.days.ago, DateTime.now)
    user.pins << pin

    Pins.create(image: "http://media.giphy.com/media/6mcB2tqIWuV3O/giphy.gif")
    squawk.created_at = Faker::Time.between(1000.days.ago, DateTime.now)
    user.pins << pin

    Pins.create(image: Faker::Lorem.sentence(5))
    squawk.created_at = Faker::Time.between(1000.days.ago, DateTime.now)
    user.pins << pin


  end

end


User.create(email: "test@user.com",
            password: "password",
            password_confirmation: "password")

User.create(email: "test2@user.com",
password: "password",
password_confirmation: "password")
