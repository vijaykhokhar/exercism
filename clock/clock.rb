class Clock
  def self.at(hour, minutes)
    Clock.new(hour, minutes)
  end

  def initialize(hour=0, minutes=0)
    @minute = "#{:hour}".to_i * 60 + minutes
  end

  def to_s
    format "%02d:%02d", hours, minutes
  end

  def ==(new_time)
    to_s == new_time.to_s
  end

  def hours
    @minute / 60 % 24
  end

  def minutes
    @minute % 60
  end
end

