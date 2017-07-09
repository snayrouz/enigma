require './test/test_helper'
require './lib/enigma'

class EnigmaTest < Minitest::Test


  def test_it_exists
    e = Enigma.new
    assert_instance_of Enigma, e
  end

  def test_that_todays_date_returns
    e = Enigma.new
    expected = e.today
    actual   = Time.now.strftime("%d%m%y").to_i

    assert_equal expected, actual
  end

  def test_rand_key_generator
    e = Enigma.new
    expected = 5
    actual   = e.rand_key.to_s.length

    assert_equal  expected, actual
    # assert_instance_of Fixnum, e.rand_key
  end

  def test_rotation
    e = Enigma.new
    rotations = e.rotations(12345)

    assert_equal rotations, [12, 23, 34, 45]
    # assert_equal e.combined(rotations, offset), [14, 28, 40, 46] 
  end
  #
  # def test_offset_conversion
  #   e = Enigma.new
  #   expected = 4
  #   actual = e.offset(Time.now.strftime("%d%m%y").to_i)
  #
  #   assert_equal expected, actual
  # end


end










# def test_it_can_encrypt_message
#   e = Enigma.new
#   my_message = "this is so secret ..end.."
#   key = "12345"
#   date = Date.today
#   output = e.encrypt(my_message)
#   assert_equal my_message, output
# end


# def test_rand_key_generator
#   e = Enigma.new
#
#
#
# end
