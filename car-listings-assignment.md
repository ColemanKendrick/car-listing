#Car-Listings Assignment

## Add Unique rows - Create 20 Cars
~~~~ 
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
~~~~
## Retrieve first row / last row
~~~~
Car.connection
Car.first
Car.last
Car.first.delete
Car.last.delete
~~~~
## Find by ID
~~~~
Car.find(4)
~~~~
## Find by model
~~~~
Car.find_by(model:"Miss Gwendolyn West")
~~~~
## Find by year
~~~~
Car.find_by(year:"2012")
~~~~
## Find by WHERE
~~~~
Car.where(color:"orange")
~~~~