class Phrase
  def initialize(phase)
    @phase = phase.downcase.scan(/\b[\w']+\b/)
  end

  def word_count
    hash = Hash.new(0)
    @phase.each{ |key| hash[key] += 1 }
    hash
  end
end