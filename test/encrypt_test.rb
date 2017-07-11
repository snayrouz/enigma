require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/encrypt'
require 'pry'


class EncryptTest < Minitest::Test

  def test_encrypt_exists
    encrypt = Encrypt.new("This is fun!")

    assert_instance_of Encrypt, encrypt
  end

  def test_splits
    encrypt = Encrypt.new("This is fun!")
    assert_equal [["T","h", "i", "s"], [" ", "i", "s", " "], ["f", "u", "n", "!"]], encrypt.splits(message)
  end

  def test_combine
    encrypt  = Encrypt.new

    expected = #value of (rotations + offset) in an array with 4 elements
    actual = encrypt.combined(rotations, offsets)

    assert_equal expected, actual
  end

end
