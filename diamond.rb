class Diamond
  attr_accessor :color
  def initialize(carets, color)
    @carets = carets
    @color = color
  end

  def self.colors
    ['pink', 'black', 'blue', 'white']
  end
end

diamond = Diamond.new(0.5, 'pink')


puts diamond.color
puts 'the diamond ages...'
diamond.color = 'black'

puts diamond.color

p Diamond.colors
