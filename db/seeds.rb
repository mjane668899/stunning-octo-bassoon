User.destroy_all
u1 = User.create :email => 'jasper@ga.com', :password => 'chicken'
u2 = User.create :email => 'mj@ga.com', :password => 'chicken'
u3 = User.create :email => 'mike@ga.com', :password => 'chicken'
puts "#{ User.count } users"

Property.destroy_all
10.times do
Property.create([{
  name: Faker::Lorem.sentence(word_count: 6),
  title: 'The max number of characters 35....',
  address: Faker::Lorem.sentence(word_count: 6),
  price: 1200,
  guest: 1,
  bedroom: 1,
  bathroom: 1,
  bed: 1,
  parking_space: 1,
  available_date: 1,
  photo: 'https://ipsumimage.appspot.com/640x360',
  details:Faker::Lorem.sentence(word_count: 50),
  description:Faker::Lorem.sentence(word_count: 50),
  }])
end
puts "#{ Property.count } properties"

Booking.destroy_all
10.times do
Booking.create([{
  total_price: '$1200' ,
  start_date: '11.12.20',
  nights: 7,
  guests: 2,
  property_id: 10 ,
  user_id: 2 ,
  }])
end

puts "#{ Booking.count } bookings"
