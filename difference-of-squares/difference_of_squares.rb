class Squares
  attr_reader :num

  def initialize(num)
    @num = num
  end

  def sum_of_squares
    (0..num).sum { |square| square * square }
  end

  def difference
    square_of_sum - sum_of_squares
  end

  def square_of_sum
    (0..num).sum * (0..num).sum
  end
end