# Ruby-workshop / Binary Tree

This a solution for representing an (ordered) binary tree within ruby. 
A tree is a set of nodes, therefore the most magic happens in this class. 
For now you can:

- Traversing tree data with **traverse depth first**
- Traversing tree data with **traverse breadth first**
- Invert the tree

The [Null Object Pattern](https://en.wikipedia.org/wiki/Null_Object_pattern) got applied in the node class. <br>
Also the [Visitor Pattern](https://en.wikipedia.org/wiki/Visitor_pattern) is used within a lambda expression for visiting
the trees nodes. <br>
There are as less as possible if, unless, etc statments in the node class for more object orientated design. 

## Run the tests
`$ ruby binary_tree_test.rb`
