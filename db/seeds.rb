# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all
puts 'Creating restaurants...'

dishoom = { name: 'Dishoom', address: '1 Quai de Bacalan, 33300 Bordeaux', phone_number: '07 88 54 52 09', category: 'chinese' }
bistrot_maurice = { name: 'Bistrot Maurice', address: '2 Quai de Bacalan, 33300 Bordeaux', phone_number: '06 88 54 52 09', category: 'french' }
le_confidentiel = { name: 'Le Confidentiel', address: '80 Quai des Chartrons, 33300 Bordeaux', phone_number: '07 89 54 52 90', category: 'belgian' }
le_bordeaux = { name: 'Le Bordeaux', address: 'Place de la comedy', phone_number: '05 57 30 43 46', category: 'italian' }
bistrot_des_anges = { name: 'Le bistrot des Anges', address: '19 Rue Rode, 33000 Bordeaux', phone_number: '05 88 54 52 09', category: 'french' }

[dishoom, bistrot_maurice, le_confidentiel, le_bordeaux, bistrot_des_anges].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
