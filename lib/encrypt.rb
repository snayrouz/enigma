require 'pry'

# what to do with this character map?

class Encrypt

  def initialize(message, key, date = (Date.today.strftime "%d%m%y"))
    @message = message

  def encrypt(message)



  end

  def splits
    @message = message.chars.each_slice[4]
  end


end


# Four characters are encrypted at a time.
# The first character is rotated forward by the “A” rotation plus the “A offset”
# The second character is rotated forward by the “B” rotation plus the “B offset”
# The third character is rotated forward by the “C” rotation plus the “C offset”
# The fourth character is rotated forward by the “D” rotation plus the “D offset”
