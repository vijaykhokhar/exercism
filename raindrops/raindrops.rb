class Raindrops
  def self.convert(num)
    if num % 3 == 0
      if num % 5 == 0 
        if num % 7 == 0 
          return "PlingPlangPlong"
        else
          return "PlingPlang"
        end
      elsif num % 7 == 0
        return "PlingPlong"
      else
        return "Pling"
      end      
    elsif num % 5 == 0
      if num % 7 == 0
        return "PlangPlong"
      else
        return "Plang"
      end
    elsif num % 7 == 0 
      return "Plong"  
    else
      return num.to_s
    end 
  end
end