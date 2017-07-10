require './lib/helper'
require 'pry'



class Enigma
  # attr_reader :date
  #
  def initialize(date = today)
    @date = date
  end

  def today
    Time.now.strftime("%d%m%y").to_i
  end

  def combined(rotations,offset)

    # iterate through the message and assign each message character to a key value

    # iterate through the char_map to the value of the message characters by hash key

    # add the value of the assigned key to the hash key to get the character for the encrypted message

  end

end

# e = Enigma.new
# e.rand_key

# def read_message(read_name)
#   (File.open(read_name, 'r') { |f| f.read}).chomp
# end
#
# def write_message(message, write_name)
#   File.open(write_name, 'w') {|f| f.write(message)}
# end

#
# def read_message(read_name)
#   (File.open(read_name, 'r') { |f| f.read}).chomp
# end
#
# def write_message(message, write_name)
#   File.open(write_name, 'w') {|f| f.write(message)}
# end
