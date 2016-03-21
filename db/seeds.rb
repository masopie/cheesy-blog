# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

a = ('a'..'z').to_a

seed_title = "Heavy Metal Thoughts: A Blog Entry by Robot Number #{rand(1..50)}"
seed_body = "Hello hello I am the robot from the #{a[rand(26)]}#{rand(1..200000)}!"

10.times {
  Article.create!(title: seed_title, body: seed_body)
}