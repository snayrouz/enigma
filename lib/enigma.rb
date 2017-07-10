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

  def rand_key
    key = ""
    5.times {key << rand(0..9).to_s}
    key.to_i
    return key
  end

  def rotations(key)
    (0..3).map do |num|
      key.to_s[num, 2].to_i
    end
  end

  def offset(date = (Date.today.strftime "%d%m%y"))
    squared_date = (date.to_i**2)
    squared_date.to_s.split("")[-4..-1].map do |num|
      num.to_i
    end
  end

  def combined(rotations,offset)

    # iterate through the message and assign each message character to a key value

    # iterate through the char_map to the value of the message characters by hash key

    # add the value of the assigned key to the hash key to get the character for the encrypted message

  end

end


# e = Enigma.new
# e.rand_key


# at some point, key = nil. default variable? key = nil ? key = Key.new
# make a Key class?


# def read_message(read_name)
#   (File.open(read_name, 'r') { |f| f.read}).chomp
# end
#
# def write_message(message, write_name)
#   File.open(write_name, 'w') {|f| f.write(message)}
# end
























# key = "12345"
# date = Date.today


  # not sure if this method will sit on this class


#   my_message.split.map do | characters |
#     characters.
#     # need to
#
#   encrypted_message =
#   output
# end
#
#
# def encrypt(my_message, key = rand_key, date = (Date.today.strftime "%d%m%y"))
#
#
#
# end
#

#
# def read_message(read_name)
#   (File.open(read_name, 'r') { |f| f.read}).chomp
# end
#
# def write_message(message, write_name)
#   File.open(write_name, 'w') {|f| f.write(message)}
# end
