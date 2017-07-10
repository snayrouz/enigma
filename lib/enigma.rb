require './lib/helper'
require 'pry'



class Enigma
  # attr_reader :date
  #
  # def initialize(date = today)
  #   @date = date
  # end

  def today
    Time.now.strftime("%d%m%y").to_i
  end

  def rand_key
    key = ""
    # key = rand(0..9)
    5.times {key << rand(0..9).to_s}
    # binding.pry
    key.to_i
    return key
  end

  def offset(date)
    squared_date = (date.to_i**2)
    squared_date.to_s.split("")[-4..-1].map do |num|
      num.to_i
      # binding.pry
    end
  end

  def combined(rotations,offset)

  end

end



# at some point, key = nil. default variable? key = nil ? key = Key.new
# make a Key class?


# def read_message(read_name)
#   (File.open(read_name, 'r') { |f| f.read}).chomp
# end
#
# def write_message(message, write_name)
#   File.open(write_name, 'w') {|f| f.write(message)}
# end

e = Enigma.new
e.rand_key






















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



# def initialize
#   @char_map = ('a'..'z').to_a + ("0".."9").to_a + ['.', ',', ' ']
#   @message = message
#
#
#
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
#
# def offset_converstion(date)
#   squared_date = (date ** 2)
#   squared_date.split("").map! do |num|
#     num.to_i
#   end
# end
