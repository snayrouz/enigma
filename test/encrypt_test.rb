require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/encrypt'
require 'pry'


class EncryptTest < Minitest::Test

  def test_encrypt_exists
    encrypt = Encrypt.new("this is so secret ..end..")

    assert_instance_of Encrypt, encrypt
  end

  def test_splits
    encrypt = Encrypt.new("this is so secret ..end..")
    expected = ["t","h", "i", "s", " ", "i", "s", " ", "s", "o", " ", "s", "e", "c", "r", "e", "t", " ", ".", ".", "e", "n", "d", ".", "."]
    assert_equal expected, encrypt.message_splits("this is so secret ..end..")
  end


  def test_combined_conversion
    encrypt = Encrypt.new("this")

    expected = [96, 77, 72, 42]
    actual = e.combined_shift

    assert_equal expected, actual
  end


end
