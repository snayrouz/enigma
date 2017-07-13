require './lib/offset'
require './lib/key'
# require './lib/engima'

class Encrypt

  attr_reader :message

  def initialize(message, key_string = nil, date = Time.now.strftime("%d%m%y").to_i)
    @message = message
    @key_string = key_string4
    @date = date
    @char_map = ('a'..'z').to_a + ('0'..'9').to_a + [' ', '.', ','].to_a
  end

  def key
    @key ||= if @key_string
      Key.new(@key_string)
    else
      Key.new
    end
  end

  def find_char
    new_message = message_splits(message)
    new_message.map do |char|
      @char_map.index(char)
    end
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

  def cycle_through
    array = find_char
    array.map do |num|
      num += combined_shift(array.index(num))
    end
  end

  def encryption_message
    encrypted_message = cycle_through
    encrypted_message.join
    encrypted_message.map do |num|
      @char_map.index(num)
    end.join
  end

end
