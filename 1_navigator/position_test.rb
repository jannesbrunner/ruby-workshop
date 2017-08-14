require "minitest/spec"
require "minitest/autorun"
require "./position"

describe Position do

  it "has a X and Y" do
    position = Position.new(x: 5, y: 10)
    position.x.must_equal 5
    position.y.must_equal 10
  end

  it "defines equality" do

    position = Position.new(x: 5, y: 10)
    position.must_equal Position.new(x: 5, y: 10)
    position.wont_equal Position.new(x: 6, y: 10)
    position.wont_equal Position.new(x: 5, y: 9)
  end 

  it "can be created from a position string" do
    Position.from_string("N11").must_equal Position.new(x: 0, y: 11)
    Position.from_string("S9").must_equal Position.new(x: 0, y: -9)
    Position.from_string("W8").must_equal Position.new(x: -8 , y: 0)
    Position.from_string("E7").must_equal Position.new(x: 7, y: 0)
  end

  it "can be added together" do 
    result = Position.new(x: 10, y: 10) + Position.new(x: -5, y: 15)
    result.must_equal Position.new(x: 5, y: 25)
  end

  it "is pretty" do
    Position.new(x: 5, y: 10).to_s.must_equal "x=5, y=10"
  end

end
