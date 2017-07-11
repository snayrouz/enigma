require './lib/offset'
require './lib/key'
# require './lib/engima'
require 'pry'



class Encrypt

  attr_reader :message

  def initialize(message, key = nil, date = (Time.now.strftime("%d%m%y").to_i))
    @message = message
  end

  # def splits(message)
  #   @message = message.chars.each_slice(4)
  # end

  def rotation
    rotation = Key.new(rotation)
  end

  # iterate through the message and assign each message character to a key value

  # iterate through the char_map to the value of the message characters by hash key

  # add the value of the assigned key to the hash key to get the character for the encrypted message

  def combined(rotations, offsets)
    # shift_value = []

    first_char = offset_a + rotation_a
    second_char = offset_b + rotation_b
    third_char = offset_c + rotation_c
    fourth_char = offset_d + rotation_d
  end

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
  # end
