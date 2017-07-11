require "pry"
class Key
  attr_reader :key

  def initialize(key)
    @key = []

  end

  def rand_key
   key = ""
    5.times {key << rand(0..9).to_s}
    key.to_i
     return key
  end

  def rotations(key)
    (0..3).map do |num|
      key.to_s[num, 2].to_i
    end
  end

  def rotation_a(key)
    rotations(key)[0]
  end

  def rotation_b(key)
    rotations(key)[1]
  end

  def rotation_c(key)
    rotations(key)[2]
  end

  def rotation_d(key)
    rotations(key)[3]
  end

end
