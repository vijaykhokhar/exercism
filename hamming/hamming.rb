class Hamming
  def self.compute(string1 = '', string2 = '')
    hamming1 = string1.scan(/\w/)
    hamming2 = string2.scan(/\w/)
    count = 0
    if hamming1.length == hamming2.length 
      hamming1.length.times do |i|
        count += 1 if hamming1[i] != hamming2[i] 
      end  
    else
      raise ArgumentError, 'lenght should be same'
    end
  count
  end
end