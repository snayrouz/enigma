require './test/test_helper'
require './lib/key'
require 'pry'

class KeyTest < Minitest::Test

  def test_rand_key
    k = Key.new(12345)

    assert_equal  5, k.rand_key.length
  end

  def test_rotations
    k = Key.new(12345)
    rotations = k.rotations

    assert_equal rotations, [12, 23, 34, 45]
  end

  def test_rotation_a
    k = Key.new(12345)

    assert_equal 12, k.rotation_a
  end

  def test_rotation_b
    k = Key.new(12345)

    assert_equal 23, k.rotation_b
  end

  def test_rotation_c
    k = Key.new(12345)

    assert_equal 34, k.rotation_c
  end

  def test_rotation_d
    k = Key.new(12345)

    assert_equal 45, k.rotation_d
  end

end
