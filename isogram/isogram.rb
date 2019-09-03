class Isogram
  def self.isogram?(input)
    input = input.downcase.scan(/\w/)
    input.uniq.length == input.length
  end
end