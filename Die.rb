# Die.rb

class Die

  # def initialize
  #     roll
  # end

  def roll
    return @showing = Random.rand(6) + 1
  end

  def showing
    return @showing
  end
end


die1 = Die.new

die2 = Die.new

die1.roll

puts "Die1 = " + die1.showing.to_s + " and Die2 = " + die2.showing.to_s

# how can I make an Array of Dice?
