require 'pry'
class Triangle
  
  attr_reader :side_1, :side_2, :side_3
  
  def initialize(side_1, side_2, side_3)
   
  # @sides = [side_1, side_2, side_3]
    @side_1 = side_1 
    @side_2 = side_2
    @side_3 = side_3
  end 
  
  def kind
    #binding.pry
    if @side_1 == 0 || @side_2 == 0 || @side_3 == 0 
      raise TriangleError
      
    elsif @side_1 < 0 || @side_2 < 0 || @side_3 < 0 
      raise TriangleError
      
    elsif @side_1 + @side_2 <= @side_3 || @side_2 + @side_3 <= @side_1 ||  @side_1 + @side_3 <= @side_2
      raise TriangleError
      
    elsif @side_1 == @side_2 && @side_2 == @side_3
      :equilateral
      
    elsif @side_1 == @side_2 || @side_2 == @side_3 || @side_1 == @side_3
      :isosceles
      
    elsif @side_1 != @side_2 && @side_2 != @side_3
      :scalene
      
    end 
  end
  
  class TriangleError < StandardError
  end 
end
# require 'pry'
# class Triangle
#   def initialize(side_1, side_2, side_3)
#     @triangle_sides = []
#     @side_1 = side_1
#     @side_2 = side_2
#     @side_3 = side_3
#     @triangle_sides << side_1
#     @triangle_sides << side_2
#     @triangle_sides << side_3
#   end
#
#   def valid?
#     sum_one_two = @triangle_sides[0] + @triangle_sides[1]
#     sum_one_three = @triangle_sides[0] + @triangle_sides[2]
#     sum_two_three = @triangle_sides[1] + @triangle_sides[2]
#
#     if (@triangle_sides.none? {|side| side <= 0}) &&
#       (sum_one_two > @triangle_sides[2] && sum_one_three > @triangle_sides[1] && sum_two_three > @triangle_sides[0])
#       return true
#     else
#       return false
#     end
#   end
#
#   def kind
#       if @side_1 == 0 || @side_2 == 0 || @side_3 == 0
#         raise TriangleError
#       elsif @side_1 <0 || @side_2 <0 || @side_3 <0
#         raise TriangleError
#       elsif @side_1 != @side_2
#       elsif  @side_1 == @side_2 && @side_2 == @side_3
#         return :equilateral
#       elsif @side_1 == @side_2 || @side_2 == @side_3 || @side_1 == @side_3
#         return :isosceles
#       elsif @side_1 != @side_2 && @side_2 != @side_3
#         return :scalene
# #elsif conditinal
# #error
#       end
#     end
# class TriangleError < StandardError
# end
# end
