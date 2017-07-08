# character_map = ["a", "b", "c", "d", "e", "f", "g", "h", "i",
#   "j", "k", "l", "m", "n", "o", "p", "q", "r",
#   "s", "t", "u", "v", "w", "x", "y", "z",
#  "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", " ", ".", ","]



class Rotator

  def initialize(key, date)
    @char_map = generate(key, date)
  end

  def 


  end

  def something_about_building_character_map
    @char_map = ('a'..'z').to_a + ("0".."9").to_a + ['.', ',', ' ']



  end

end
