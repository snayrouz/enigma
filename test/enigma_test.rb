require './test/test_helper'
require './lib/enigma'

class EnigmaTest < Minitest::Test


  def test_it_exists
    e = Enigma.new
    assert_instance_of Enigma, e
  end

  def test_it_can_encrypt_message
    e = Enigma.new
    my_message = "this is so secret ..end.."
    key = "12345"
    date = Date.today
    output = e.encrypt(my_message)
    assert_equal my_message, output
  end

end
