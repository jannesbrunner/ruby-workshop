class Position
  attr_reader :x, :y

  def initialize(args)
    @x = args.fetch(:x)
    @y = args.fetch(:y)
  end

  def self.from_string(str)
    direction = str.chars.first
    magnitude = str.chars.drop(1).join.to_i

    case direction
    when 'N' then Position.new(x: 0, y: magnitude)
    when 'S' then Position.new(x: 0, y: -magnitude)
    when 'E' then Position.new(x: magnitude, y: 0)
    when 'W' then Position.new(x: -magnitude, y: 0)
    end
  end

  def ==(other)
    x == other.x && y == other.y
  end

  def +(other)
    Position.new(x: x + other.x, y: y + other.y)
  end

  def to_s
    "x=#{x}, y=#{y}"
  end
end
