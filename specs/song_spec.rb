require('minitest/autorun')
require('minitest/rg')
require_relative('../song')

class SongTest < Minitest::Test


  def setup
    @song = Song.new("Song")

  end

  def test_song_name
    assert_equal("Song", @song.song_title)
  end


end
