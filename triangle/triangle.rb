class Triangle
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def equilateral?
    array.uniq.length == 1 && array.uniq[0] > 0 ? true : false
  end

  def isosceles?
    (array.uniq.length == 2 || array.uniq.length == 1) && !inequality ? true : false
  end

  def scalene?
    array.uniq.length == 3 && !inequality ? true : false
  end

  def inequality
    (array[0] > array[1] + array[2]) || (array[1] > array[0] + array[2]) || (array[2] > array[0] + array[1]) ? true : false
  end
end
