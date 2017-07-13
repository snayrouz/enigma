require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/decrypt'

class DecryptTest < Minitest::Test


  def test_it_exists
    d = Decrypt.new
    assert_instance_of Decrypt, d
  end











end
