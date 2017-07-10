require './lib/offset'
require 'pry'



class Encrypt

  def initialize(message, key = nil, date = (Date.today.strftime "%d%m%y"))
    @message = message
  end

  def splits
    @message = message.chars.each_slice[4]
  end

  def combined(rotations, offsets)
    rotations.map.with_index do |rotation, index|
      offset[index] + rotation

  end


  def encrypt(message)
    rotation_a + offset_a


    char_map.rotate[rotation_a + offset_a]


  end




end
