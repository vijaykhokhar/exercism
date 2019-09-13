class Complement
  def self.of_dna(comp)
    complement = ''
    (0..comp.length).each do |compl_index|
      complement += 'G' if comp[compl_index] == 'C'
      complement += 'C' if comp[compl_index] == 'G'
      complement += 'A' if comp[compl_index] == 'T'
      complement += 'U' if comp[compl_index] == 'A'
    end
    complement
  end
end