require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class EnigmaTest < Minitest::Test

  def setup
    @message =
    @key =
    @date =
    @encrypted_message =
  end

  def test_it_exists
    e = Enigma.new
    assert_instance_of Enigma, e
  end

  def test_it_can_encrypt_message
    e = Enigma.new
    # need to assert some variable, actual
  end

  def test_it_can_decrypt_message
    e = Enigma.new
    # need to assert some variable, actual
  end

  def test_will_encrypt_message_and_key_and_date
    e = Enigma.new
    actual = e.encrypt(@message, @key, @date)
    # need to assert some variable, actual
  end

  def test_it_can_crack_message
    e = Enigma.new
    actual = e.crack(@encrypted_message, @date)
    # need to assert some variable, actual
  end


end
