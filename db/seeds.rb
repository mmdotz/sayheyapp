# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

30.times do |hey|
  sayer = Sayer.create( {
      handle:  Faker::Internet.user_name,
    })
    Hey.create( {
      body:       Faker::Lorem.characters(20),
      sayer_id:   sayer.id
      })
end
