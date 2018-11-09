# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
	Typeincident.create({
		name: Faker::Book.genre,
		description: Faker::Lorem.sentence
	})

	Role.create({
		name: Faker::Company.profession
	})
end
5.times do

	User.create!({
		name: Faker::Name.first_name,
		lastname: Faker::Name.last_name,
		phone: Faker::PhoneNumber.subscriber_number(7),
		gender: Faker::Gender.binary_type,
		entity: Faker::Company.name,
		cedula: Faker::PhoneNumber.subscriber_number(7),
		role_id: Faker::Number.between(1,3),
		email: Faker::Internet.email,
		password: "password", #Faker::Internet.password(8),
		reset_password_token: Faker::Lorem.word
	})

	Incident.create({
		name: Faker::Superhero.power,
		description: Faker::Lorem.sentence,
		status: Faker::PhoneNumber.subscriber_number(2),
		initial_datetime: Faker::Time.between(DateTime.now - 1, DateTime.now),
		final_datetime: Faker::Time.between(DateTime.now - 1, DateTime.now),
		user_id: Faker::Number.between(1,3),
		typeincident_id: Faker::Number.between(1,3)
	})

	Registry.create({
		type_r: Faker::Lorem.word,
		initial_direction: Faker::Address.street_address, 
		final_direction: Faker::Address.street_address, 
		no_consultas: Faker::PhoneNumber.subscriber_number(2),
		user_id: Faker::Number.between(1,3)
	})
end
