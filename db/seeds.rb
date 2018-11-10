# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.new(first_name: "Lisa", last_name: "Porter", username: "LisaP", password: "", email: "LPorter@Porter.com", phone_number: "773-909-0000", summary: "My family is relocating to a different state and we're looking for someone who is need of baby stuff. We have a lot of boy clothes sizes 3 months 24 months. We also have a stroller and infant car seat. Please contact me if you're interested.", age_of_child: "0 months - 2 years", gender_of_child: "boy", zipcode: "60603")
  user.save

  user = User.new(first_name: "Fanny", last_name: "Smith", username: "FannyS", password: "", email: "FSmith@Smith.com", phone_number: "773-909-7868", summary: "I have a highchair that is no longer being used. If interested, please contact me.", age_of_child: "9 months - 2 years", gender_of_child: "unisex", zipcode: "60609")
    user.save

user = User.new(first_name: "Will", last_name: "Orvell", username: "WillO", password: "", email: "WOrvell@Orvell.com", phone_number: "773-999-9998", summary: "My wife and I are giving away a brand new crib. We received two at our baby shower. Please contact if intersted.", age_of_child: "0 months - 2 years", gender_of_child: "unisex", zipcode: "60609")
    user.save