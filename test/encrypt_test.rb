require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'encrypt'


class EncryptTest < Minitest::Test


  def test_combine
    e = Encrypt.new
    


  end

  def test_splits
    message = Encrypt.new("This is fun!")
    assert equal [["T","h", "i", "s"], [" ", "i", "s", " "], ["f", "u", "n", "!"]], message.splits
  end











end
