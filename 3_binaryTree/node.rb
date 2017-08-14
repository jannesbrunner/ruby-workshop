class Node 
  class EmptyNode
    def traverse_depth_first(_); end
    def traverse_node_breadth_first(_, _); end
    def invert
      EMPTY
    end
    
  end

  EMPTY = EmptyNode.new  
  
  attr_reader :value, :left, :right  
  
  def initialize(value, left = EMPTY, right = EMPTY)
    @value = value	
    @left = left
    @right = right
  end  
  def invert
    Node.new(value, left.invert, right.invert)
  end
  def traverse_depth_first(visitor)
    left.traverse_depth_first(visitor)
    visitor.call(value)
    right.traverse_depth_first(visitor)
  end
  def traverse_breadth_first(visitor)
    queue = [self]
    until queue.empty?
      queue.shift.traverse_node_breadth.first(visitor, queue)
    end
  end
  def traverse_breadth_first(visitor, queue)
    visitor.call(current_node.value)
    

    queue << left << right
    
   end
end
  
    
   

