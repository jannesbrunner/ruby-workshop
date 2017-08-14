require "./position"

class Navigator
  attr_reader :position
  def initialize
    @position = Position.new(x: 0, y: 0)
  end

  def follow(directions)
    parse(directions).each do |direction|
      self.position = position + direction
    end
  end

  private

  attr_writer :position

  def parse(directions)
    directions.split(", ").map { |direction| Position.from_string(direction) }
  end

end
