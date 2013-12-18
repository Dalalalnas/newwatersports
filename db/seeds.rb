# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Ride.create(ridename:BananaBoat, trailer: '<iframe width="420" height="315" src="//www.youtube.com/embed/2uUPBb3n6Go" frameborder="0" allowfullscreen></iframe>' picture: 'sea.jpg', type_id: 2)

Ride.create(ridename: JetSki, trailer: '<iframe width="420" height="315" src="//www.youtube.com/embed/2uUPBb3n6Go" frameborder="0" allowfullscreen></iframe>' picture: 'jet.jpg', type_id: 1)

User.create(fname:Dalal, lname:Alnasrallah, Country:Kuwait, Dob:07/01/1994, email:dalalalnasrallah@hotmail.com)

User.create(fname:Natasha, lname:Cole, Country:Ireland, Dob:13/11/1992, email:natashacole@hotmail.com)


