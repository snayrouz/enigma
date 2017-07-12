require "pry"
class Key
  attr_reader :key

  def initialize(key = rand_key)
    @key = key
  end

  def rand_key
   key = ""
    5.times {key << rand(0..9).to_s}
    key.to_i
     return key
  end
  # will break out rand_key into 4 element array, group of 2
  def rotations
    (0..3).map do |num|
      key.to_s[num, 2].to_i
    end
  end

  def rotation_a
    rotations[0]
  end

  def rotation_b
    rotations[1]
  end

  def rotation_c
    rotations[2]
  end

  def rotation_d
    rotations[3]
  end

end
