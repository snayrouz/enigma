require './lib/encryption'
require './lib/decryption'
require './lib/crack'
require './lib/helper'

class Enigma

  def initialize
    @char_map = ('a'..'z').to_a + ("0".."9").to_a + ['.', ',', ' ']
    @message = message



  end


  def encrypt(my_message, key = rand_key, date = (Date.today.strftime "%d%m%y"))



  end






  def rand_key
    key = rand(0..9).to_s
    4.times do
      key << rand(0..9)to_s
      key.to_i
    end
  end

  def read_message(read_name)
    (File.open(read_name, 'r') { |f| f.read}).chomp
  end

  def write_message(message, write_name)
    File.open(write_name, 'w') {|f| f.write(message)}
  end

  def offset_converstion(date)
    squared_date = (date ** 2)
    squared_date.split('').map! do |num|
      num.to_i
    end
  end


end



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
