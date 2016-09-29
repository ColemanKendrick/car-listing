# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'
colors = ["blue","black","yellow","red","orange","white","green","silver"]
uses = ["city","highway","mixed","offroad"]
Car.connection
20.times do
randomYear = rand(66)
car_model            = Faker::Name.name
car_year           = 1950.to_i + randomYear
description         = Faker::Company.bs
color  = colors[rand(7)]
price           = 15000 + rand(100000)
use         = uses[rand(3)]
Car.new(model:car_model,year:car_year,description:description,color:colors[rand(7)],price:price ,use:use).save
end