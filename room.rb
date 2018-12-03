class Room


  attr_accessor :room_name, :capacity, :guests, :songs
  def initialize(room_name, capacity, guests, songs)
    @room_name = room_name
    @capacity = capacity
    @guests = guests
    @songs = songs
  end


  # def check_in(guest)
  #
  #
  # end

  def room_status
    if @capacity == 4
       return "Sorry, the room is full!"
     elsif @capacity <4 && @capacity >= 0
      return "spaces available"
    end
  end





  end
