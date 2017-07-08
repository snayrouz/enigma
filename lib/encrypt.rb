# %w(a b c d e f g h i j k l m
#   n o p q r s t u v w x y z) +
#   %w( A B C D E F G H I J K L M
#   N O P Q R S T U V W X Y Z) +
#   %w(0 1 2 3 4 5 6 7 8 9) +
#   [" ", ".", ",", "!", "@", "#", "$", "%", "^",
#     "&", "*", "(", ")", "[", "]", "<", ">",
#     ";", ":", "/", "?", " \ ", "|"]

    (' '..'z').to_a

# what to do with this character map?

class Encrypt

  def initialize(message,key)

  def encrypt(message)



  end

end


# Four characters are encrypted at a time.
# The first character is rotated forward by the “A” rotation plus the “A offset”
# The second character is rotated forward by the “B” rotation plus the “B offset”
# The third character is rotated forward by the “C” rotation plus the “C offset”
# The fourth character is rotated forward by the “D” rotation plus the “D offset”
