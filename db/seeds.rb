# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
puts "cleaning database"
Candle.delete_all
puts "Creating candles..."
User.create(email: "hello@ajacandles.com", password: "123456")
candle_one = { name: "candle one", candle_type: "wax", description: "cat candle" }
candle_two =  { name: "candle two", candle_type: "wax", description: "dog candle" }

[ candle_one, candle_two ].each do |attributes|
  candle = Candle.create!(attributes)
  puts "Created #{candle.name}"
end
puts "Finished!"
