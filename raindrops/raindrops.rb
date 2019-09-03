class Raindrops
  def self.convert(num)
    string = ''
    string = string + "Pling" if num % 3 == 0
    string = string + "Plang" if num % 5 == 0
    string = string + "Plong" if num % 7 == 0
    string = string + num.to_s if (num % 3 !=0 && num % 5 != 0 && num % 7 != 0)
    string
  end
end