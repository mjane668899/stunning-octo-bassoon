User.destroy_all
u1 = User.create :email => 'jasper@ga.com', :password => 'chicken'
u2 = User.create :email => 'mj@ga.com', :password => 'chicken'
u3 = User.create :email => 'mike@ga.com', :password => 'chicken'
puts "#{ User.count } users"

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
