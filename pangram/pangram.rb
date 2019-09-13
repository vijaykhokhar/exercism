class Pangram
  ALPHA = ('a'..'z')

  def self.pangram?(sentence)
    ALPHA.all? { |alphabet| sentence.downcase.include?(alphabet) }
  end
end
