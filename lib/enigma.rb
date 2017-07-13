require './lib/key'
require './lib/offset'
require './lib/encrypt'
require 'pry'

class Enigma

   attr_accessor :date, :offset, :key, :encrypt

  # def initialize(date = today)
  #   @date = today
  #   @encrypt = Encrypt.new
  #   @key = Key.new(12345)
  #   @offset = Offset.new
  # end

  def today
    Time.now.strftime("%d%m%y").to_i
  end

  def encrypt(message = nil, key = nil, date = Time.now.strftime("%d%m%y").to_i)

  end

  def read_message(read_name)
    (File.open(read_name, 'r') { |f| f.read}).chomp
  end

  def write_message(message, write_name)
    File.open(write_name, 'w') {|f| f.write(message)}
  end


end





  # def print_encrypt_message
  #   p "Created #{[output_filename]} with the key #{key} and date #{date}"
  # end
  #
  # def print_decrypt_message
  #   p "Created #{[output_filename]} with the key #{key} and date #{date}"
  # end
  #
  # def print_crack_message
  #   p "Created #{[output_filename]} with the cracked key #{key} and date #{date}"
  # end
  #

# e = Enigma.new
# e.rand_key



#
# def read_message(read_name)
#   (File.open(read_name, 'r') { |f| f.read}).chomp
# end
#
# def write_message(message, write_name)
#   File.open(write_name, 'w') {|f| f.write(message)}
# end
