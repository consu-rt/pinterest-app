# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Pin.delete_all
#asignnado pin a  user
user= User.first
#asignando datos a pin
3.times do	|i|
	Pin.create!(
		name:"Photo #{i}",
		desc: "descfoto", 
		photo: 'https://picsum.photos/200/200/?random',
		user: user
		)
end