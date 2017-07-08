require './lib/helper'

class Enigma


  def encrypt(message = nil, key = nil, date = Date.today)
    e = Encrypt(message, key, date) #i feel like I need to call on a different class?
    e.encrypt

  end


  # not sure if this method will sit on this class
 def offset_converstion(date)
   squared_date = (date ** 2)
   squared_date.split('').map! do |num|  
     num.to_i
   end

 end





end
