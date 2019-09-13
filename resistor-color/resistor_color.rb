class ResistorColor
  COLORS = ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"]
  
  def self.color_code(color)
    (0..COLORS.length).each do |place|
      return place if COLORS[place] == color
    end
    'expected'    
  end
end
