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

  def test_key
    encrypt = Encrypt.new("this is so secret ..end..")

    #unsure how to write a test with true or else statement
    assert_equal Key.new, encrypt.key
  end

  def test_combined_shift
    encrypt = Encrypt.new

    expected = [24, 8, 90, 33]

    assert_equal expected, encrypt.combined_shift("this")
  end



  def test_can_find_char_index_value
    encrypt= Encrypt.new("hello")



    assert_equal [7, 4, 11, 11, 14], encrypt.find_char
  end

  def test_cycle_through
    encrypt = Encrypt.new


    assert_equal
  end

  def test_encryption_message
    encrypt = Encrypt.new("this")


    assert_equal 0, encrypt.encryption_message

  end

end
