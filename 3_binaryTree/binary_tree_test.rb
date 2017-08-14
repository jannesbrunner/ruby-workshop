require "minitest/autorun"
require_relative "node"

class BinaryTreeTest < Minitest::Test
  def setup
     #      4
     # 	  2   6
     #  1  3 5  7
  @tree = Node.new(4,
		    Node.new(2,
		    	Node.new(1),
			Node.new(3)), 
		    Node.new(6,
			Node.new(5),
			Node.new(7))
		 )
  end
  def test_traverse_depth_first 

    assert_tree [1, 2, 3, 4, 5, 6, 7], @tree
  end
  def test_traverse_breadth_first
    
   
  end
  
  
  def test_invert
    assert_tree = [7, 6, 5, 4, 3, 2, 1], @tree.invert 
  end
 private 
  def assert_tree(values, tree, traversal_method = :traverse_depth_first)
    result = []
    visitor = ->(node_value) { result << node_value}
  tree.send(traversal_method, visitor)
  
  assert_equal values, result
  end

end
