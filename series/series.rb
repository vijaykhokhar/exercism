class Series
  attr_reader :series

  def initialize(series)
    @series = series.chars
  end

  def slices(number)
    if number > @series.size 
      raise ArgumentError, 'number should not be greater than series size'
    else
      @series.each_cons(number).map(&:join)
    end
  end
end