# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class. 

# The Tv class will have the attributes: power, volume, and channel. 

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods: 
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)

class Tv
  attr_accessor :power, :volume, :channel

  def initialize
    @power = false
    @volume = 10
    @channel = 25
  end

end


class Remote
  attr_reader :tv

  def initialize(tv)
    @tv = tv
  end

  def toggle_power
    @tv.power = !@tv.power
  end

  def increment_volume
    if @tv.volume < 100 #My imaginary TV has a maximum volume of 100 volume units
      @tv.volume+=1
    end
  end

  def decrement_volume
    if @tv.volume > 0 #My imaginary TV has a minimum volume of 0 volume units
      @tv.volume-=1
    end
  end

  def set_channel(channel)
    @tv.channel=channel
  end

end

my_tv = Tv.new
my_remote = Remote.new(my_tv)

puts "Is the TV on? #{my_tv.power}"
puts "Toggling power..."
my_remote.toggle_power
puts "Is the TV on? #{my_tv.power}"

puts "What is the volume set at? #{my_tv.volume}"
puts "Increasing the volume..."
my_remote.increment_volume
puts "What is the volume set at? #{my_tv.volume}"
puts "Decreasing the volume..."
my_remote.decrement_volume
puts "What is the volume set at? #{my_tv.volume}"

puts "What channel is the TV on? #{my_tv.channel}"
puts "Changing the channel..."
my_remote.set_channel(15)
puts "What channel is the TV on? #{my_tv.channel}"

100.times do
  my_remote.increment_volume
end 

puts "What is the volume set at? #{my_tv.volume}" #Should only be 100

200.times do
  my_remote.decrement_volume
end

puts "What is the volume set at? #{my_tv.volume}" #Should only be 0