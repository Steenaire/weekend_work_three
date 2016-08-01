# In this exercise, we've already implemented the class, and you have to write the 
# driver code. 
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end


# Write your own driver code below! Make sure your code tests the following:
# The ability to change a room number even after a reservation has already been created
# The add_a_fridge method
# The add_a_crib method
# The add_a_custom_amenity method

require 'date'

reservation1 = HotelReservation.new({
  customer_name: "Steen",
  date: Date.today,
  room_number: "5A",
  amenities: []
  })

puts "Original room number: #{reservation1.room_number}"
reservation1.room_number = "6A"
puts "Room number after change: #{reservation1.room_number}"

puts "Amenities before: #{reservation1.amenities}"
reservation1.add_a_fridge
puts "Amenities after add_a_fridge: #{reservation1.amenities}"

puts "Amenities before: #{reservation1.amenities}"
reservation1.add_a_crib
puts "Amenities after add_a_crib: #{reservation1.amenities}"

puts "Amenities before: #{reservation1.amenities}"
reservation1.add_a_custom_amenity("hot tub")
puts "Amenities after add_a_custom_amenity: #{reservation1.amenities}"