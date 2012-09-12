puts "----- Opdracht 5.1 -----"

class Persoon
  attr_accessor :naam, :leeftijd

  @@nPersonen = 0

  def initialize(naam, leeftijd)
    @naam = naam
    @leeftijd = leeftijd
    @@nPersonen += 1
  end

  def self.nPersonen
    @@nPersonen
  end

  def to_s()
    if(block_given?)
      yield(naam, leeftijd)
    else
      "Persoon #{naam}"
    end
  end
end

p1 = Persoon.new("Piet", 20)
p2 = Persoon.new("Karel", 54)

puts "Aantal personen: " + Persoon.nPersonen.to_s
puts p1.to_s { |nm, l|
  "hallo #{nm}, leeftijd #{l}"
}
puts p2.to_s { |nm, l|
  "hallo #{nm}, leeftijd #{l}"
}
