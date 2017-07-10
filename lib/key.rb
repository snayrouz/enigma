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
