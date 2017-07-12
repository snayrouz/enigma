require 'pry'


class Decrypt

  def initialize(message, key, date)
    @message = message
    @key = key
    @date = date
  end

  def combined_shift(index)
    if index % 4 == 0
      key.rotation_a + offset.offset_a
    elsif index % 4 == 1
      key.rotation_b + offset.offset_b
    elsif index % 4 == 2
      key.rotation_c + offset.offset_c
    elsif index % 4 == 3
      key.rotation_d + offset.offset_d
    end
  end

  def map_things
    array = find_char
    array.map do |num|
    num -= combined_shift(array.index(num))
  end

  def decrypt
    new_message = message_splits(message)
    new_message.map do |char|
      @char_map.index(char)
    end
  end

end
