# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(first_name: 'Maxime', email: 'maxime1@gmail.com', password: 'maximeuser')
user1.save!
nest1 = user1.build_nest(address: '55 boulevard de reuilly', zipcode: '75012', city: 'Paris', country: 'France', wifi:'true')
nest1.save!

user2 = User.create(first_name: 'Celia', email: 'celia@gmail.com', password: 'celiauser')
user2.save!
nest2 = user2.build_nest(address: '52 boulevard de reuilly', zipcode: '75012', city: 'Paris', country: 'France', wifi:'true')
nest2.save!

user3 = User.create(first_name: 'Iakov', email: 'iakov@gmail.com', password: 'iakovser')
user3.save!
nest3 = user3.build_nest(address: '60 boulevard de reuilly', zipcode: '75012', city: 'Paris', country: 'France', wifi:'false')
nest3.save!

user4 = User.create(first_name: 'Antoine', email: 'antoine@gmail.com', password: 'antoineuser')
user4.save!
nest4 = user4.build_nest(address: '10 rue de la halle', zipcode: '59160', city: 'Lille', country: 'France', wifi:'false')
nest4.save!

#user = User.create(name: 'Germany', population: 81831000)
#user.nest.build()


#user = User.new(....)
#user.nest.build()

#nest = Nest.new(....)

#nest.user = user
