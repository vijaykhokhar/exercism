class SumOfMultiples
  def initialize(*factors)
    @factors = *factors
  end

  def to(value)
    return 0 if @factors == [0]
    (0...value).select{ |number| @factors.any? { |multipler| number % multipler== 0 } }.sum
  end
end