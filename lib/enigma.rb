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

  def combined_shift(rotations, offset)
    first_char = @Key.rotation_a + @Offset.offset_a
    second_char = @Key.rotation_b + @Offset.offset_b
    third_char = @Key.rotation_c + @Offset.offset_c
    fourth_char = @Key.rotation_d + @Offset.offset_d

  end
  puts first_char

end



  # def get_characters
  #   File.read(@input_filename).length
  # end

  def print_encrypt_message
    p "Created #{[output_filename]} with the key #{key} and date #{date}"
  end

  def print_decrypt_message
    p "Created #{[output_filename]} with the key #{key} and date #{date}"
  end

  def print_crack_message
    p "Created #{[output_filename]} with the cracked key #{key} and date #{date}"
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
