require './test/test_helper'
require './lib/enigma'

class EnigmaTest < Minitest::Test

  def setup
    @message = "this is so secret ..end.."
    @key = "12345"
    @date = Date.today
    @encrypted_message = #ahhh don't know yet
  end

  def test_it_exists
    e = Enigma.new
    assert_instance_of Enigma, e
  end

  def test_it_can_encrypt_message
    e = Enigma.new
    actual = e.encrypt(@message, @key, @date)
    assert_equal @encrypted_message, actual
  end

end #why does I get an error here?
