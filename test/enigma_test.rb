require './test/test_helper'
require './lib/enigma'
require 'pry'

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





end



def test_offset_conversion
  e = Enigma.new
  expected =
  actual = e.offset(Time.now.strftime("%d%m%y").to_i)

  assert_equal expected, actual
end


  def test_print_message_feedback_success_feedback
    e = Enigma.new("message.txt", "encrypted.txt")
    assert_equal "Created 'encrypted.txt' with the key #{key} and date #{date}", e
  end

  def test_print_message_feedback_success_feedback_for_decrypt
    d = Decrypt.new("decrypted.txt", Key)
    assert_equal "Created 'decrypted.txt' with the key #{key} and date #{date}", d
  end

  def test_print_message_feedback_success_feedback_for_crack
    c = Crack.new("cracked.txt", Key)
    assert_equal "Created 'cracked.txt' with the key #{key} and date #{date}", c
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
