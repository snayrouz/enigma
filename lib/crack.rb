class Crack

  def initialize(message, date =(Date.today.strftime "%d%m%y"))
    @message = message
    @date = date
    @rotation =

  end

  def crack_key
    alt_message = @message
    until alt_message[-7..-1] == "..end.."
      decryption = Decryption.new(message, rotation_to.s, date)
      alt_message = decryption#something here
      @rotation += 1
      alt_message
    end
    @message = alt_message
  end









end
