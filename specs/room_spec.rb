require('minitest/autorun')
require('minitest/rg')
require_relative('../room')
require_relative('../song')
require_relative('../guest')

class RoomTest < MiniTest::Test


    def setup
        @room = Room.new("444",@capacity, @guests, @songs)
        @guest1 = Guest.new("Emy")
        @guest2 = Guest.new("Sho")
        @guest3 = Guest.new("Matei")
        @guest4 = Guest.new("Andra")
        @guests = []
        @song1 = Song.new("One")
        @song1 = Song.new("One")
        @song2 = Song.new("Two")
        @song3 = Song.new("Three")
        @songs = []
        @capacity = []

    end

    def test_room_name
      assert_equal("444", @room.room_name)
    end

    def test_room_capacity
      @capacity = [4]
      assert_equal([4], @room.capacity)
    end

    def test_room_have_guests
      @guests = [@guest1]
      assert_equal("Emy", @guest1.name)
    end

    # def test_check_in(@guest2)
    #   @room.
    #   assert_equal([@guest1, @guest2], @room.check_in(@guest2))
    # end

    def test_room_have_songs
      assert_equal("One", @song1.song_title)
    end

    def test_room_status
      @capacity = [4]
      @guests = [@guest1, @guest2, @guest3, @guest4]
      assert_equal("Sorry, the room is full!",
        @room.room_status)
    end

    def test_room_status
      @capacity = [4]
      @guests = [@guest1, @guest2]
      assert_equal("spaces available",
         @room.room_status)
    end

 end
