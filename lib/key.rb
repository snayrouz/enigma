class Key
  attr_reader :key

  def initialize
    @key = []
  end

  def generate_key
    numbers = [0..9]
    5.times do |number|
      @key << numbers.sample
    end
    @key.join
  end

  def rotations(key)
    (0..3).map do |num|
      key.to_s[num, 2].to_i
    end
  end

  def rotation_a
    rotation[0]
  end

  def rotation_b
    rotation[1]
  end

  def rotation_c
    rotation[2]
  end

  def rotation_d
    rotation[3]
  end

end
