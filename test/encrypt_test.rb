require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'encrypt'


class EncryptTest < Minitest::Test


  # def test_it_exists
  #   message = Encrypt.new
  #   assert_instance_of Encrypt, message.encrypt(????)
  # end

  def test_splits
    message = Encrypt.new("This is fun!")
    assert equal [["T","h", "i", "s"], [" ", "i", "s", " "], ["f", "u", "n", "!"]], message.splits
  end











end
