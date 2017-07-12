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
    @char_map = ('a'..'z').to_a + ('0'..'9').to_a + [' ', '.', ','].to_a
  end
 # if @key = true or else create new key_string else create new Key
 # this will stop the key from generating a new key when a Key exists
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

   def encryption(letter, key_string)
     encrypted_message = []
    # call on the output of method_splits
    # combined_shift.map.with_index {}
    find_char.rotate[7] + [24]
    char_map.find_cha.rotate(combined_shift)
    # call on the shift_value array
    # Four characters are encrypted at a time.
    # Need to take split message and % 4 then set each char shift equal to index 0, 1, 2, 3
    # Next, we rotate
    # The first character is rotated forward by the “A” rotation plus the “A offset”
    # The second character is rotated forward by the “B” rotation plus the “B offset”
    # The third character is rotated forward by the “C” rotation plus the “C offset”
    # The fourth character is rotated forward by the “D” rotation plus the “D offset”
    encrypted_message
    # binding.pry
   end

   def find_char
     new_message = message_splits(message)
     new_message.map do |char|
       @char_map.index(char)
     end
   end


  #  char_map.find {|index| }

   # message_splits.find {|index, shift_value| index + combined_shift}

   #message.each_index do |index|


end
# rotations.map.with_index do |rotation, index|
#   offset[index] + rotation

# shift_value.map {|in|}

  # def rotation
  #   rotation = Key.new(rotation)
  # end
