require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')


class GuestTest < Minitest::Test


  def setup
    @guest = Guest.new("Raul")
  end

  def test_guest_have_a_name
    assert_equal("Raul", @guest.name)
  end


end
