require './lib/offset'
require './lib/key'
# require './lib/engima'
require 'pry'

class Encrypt

  attr_reader :message

  def initialize(message, key_string = nil, date = Time.now.strftime("%d%m%y").to_i)
    @message = message
    @key_string = key_string
    @date = date
  end

  def key
    @key ||= if @key_string
      Key.new(@key_string)
    else
      Key.new
    end
  end

  def offset
    Offset.new(@date)
  end

  def message_splits(message)
    @message = message.split(//)
  end

  def combined_shift
    shift_value = []
    first_char = key.rotation_a + offset.offset_a
    second_char = key.rotation_b + offset.offset_b
    third_char = key.rotation_c + offset.offset_c
    fourth_char = key.rotation_d + offset.offset_d
    shift_value << [first_char, second_char, third_char, fourth_char]
    shift_value.flatten
  end


  # # iterate through the message and assign each message character to a key value

  # iterate through the char_map to the value of the message characters by hash key

  # add the value of the assigned key to the hash key to get the character for the encrypted message

end
# rotations.map.with_index do |rotation, index|
#   offset[index] + rotation

  # def encrypt(message)
  #
  #   rotation_a + offset_a
  #
  #
  #     char_map.rotate[rotation_a + offset_a]
  #
  #

  # def rotation
  #   rotation = Key.new(rotation)
  # end
