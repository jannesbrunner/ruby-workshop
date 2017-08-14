require "minitest/spec"
require "minitest/autorun"
require "./navigator"

describe Navigator do
  it "follows directions" do
    directions = "N2, E5, S10"
    navigator = Navigator.new

    navigator.follow(directions)
    
    navigator.position.must_equal Position.new(x: 5, y: -8)    
  end
end
