require 'minitest/autorun'
require 'minitest/pride'
require './lib/offset'


class OffsetTest < Minitest::Test

  def test_offset
    o = Offset.new(248474)

    assert_equal [ 8, 6, 7, 6], o.offset
  end

  def test_offset_a
    o = Offset.new(248474)

    assert_equal 8, o.offset_a
  end

  def test_offset_b
    o = Offset.new(248474)

    assert_equal 6, o.offset_b
  end

  def test_offset_c
    o = Offset.new(248474)

    assert_equal 7, o.offset_c
  end

  def test_offset_d
    o = Offset.new(248474)

    assert_equal 6, o.offset_d
  end

end
