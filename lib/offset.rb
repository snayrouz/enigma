

class Offset

  attr_reader :date

  def initialize(date = (Time.now.strftime("%d%m%y").to_i))
    @date = date
  end

  def offset
    squared_date = (date.to_i**2)
    squared_date.to_s.split("")[-4..-1].map do |num|
      num.to_i
    end
  end

  def offset_a
    offset[0]
  end

  def offset_b
    offset[1]
  end

  def offset_c
    offset[2]
  end

  def offset_d
    offset[3]
  end

end
