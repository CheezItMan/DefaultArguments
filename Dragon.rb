# Dragon.rb

# You will build a Baby Dragon
#  He needs to be able to:
# => eat
# => sleep
# => Poop/walk
# => Play

# Agreements:  10 KG of stuff in his belly mean's he's full
#               0 KG of stuff in his intestine means he doesn't need to go.


class Dragon
  # Initialize Method
  # Takes a name as a parameter and
  # Creates a new Dragon object
  # That is awake with no need to poop
  # (yes I said poop)
  # and a full belly
  # The Dragon's name is passed as a
  # parameter.
  def initialize(name)
    @food_in_belly = 100
    @food_in_intestine = 0
    @awake = true
    @name = name
    puts "#{@name} has been born!"
  end
  # Feed Method
  # Adds amount or 10 food to the
  # Dragon's Belly
  # Then time passes
  # The Dragon's belly can only hold 100
  # food.  Any more and he makes a mess.
  def feed(amount = 10)
    @food_in_belly += amount
    if @food_in_belly > 100
      puts "#{@name} is overstuffed and makes a mess"
      @food_in_belly = 100
    else
      puts "#{@name} eats happily"
    end
    time_passed
  end

  # Walk Method
  #  If the dragon is asleep it
  #  wakes the dragon then if
  #  the dragon needs to go
  #  the intestines empty and if the
  #  Dragon doesn't need to go it
  #  sniffs around.
  #  Then time passes
  def walk
    if @awake != true
      puts "You wake up #{@name}"
      @awake = true
    end
    if @food_in_intestine > 50
      @food_in_intestine = 0
      puts "#{@name} makes use of the facilities"
    else
      puts "#{@name} sniffs around but doesn't do business"
    end
    time_passed
  end
  # Nap Method
  # Makes the Dragon sleep.
  #  Then time passes.
  def nap
    @awake = false
    time_passed
  end
  # Play Method
  # wakes the dragon, if needed and
  # plays with the dragon
  # Then time passes.
  def play
    wake
    puts "You play toss with #{@name}"
    puts "#{@name} purrs singing your eyebrows"
    time_passed
  end

  # Wake Method
  # A helper method.
  # if the dragon is awake, nothing
  # otherwise the Dragon gently wakes.
  def wake
    if @awake

    else
      @awake = true
      puts "You gently wake #{@name}"
    end
  end

  # Time_passed Method
  # A helper Method.  It simulates time
  # passing and the dragon reacts to
  # changes, such as doing the potty dance,
  # or if too hungry eating the user.
  private
  def time_passed
    @food_in_belly -= 10
    @food_in_intestine += 10
    # check this out, could be improved/fixed due to double printing out of how hungry he is in some situations
    if @food_in_belly < 30
      if @awake != true
        @awake = true
        puts "#{@name} suddenly awakes"
      end
      puts "#{@name} is HUNGRY!"
    end
    if @food_in_intestine > 80
      if @awake != true
        @awake = true
        puts "#{@name} suddenly awakes"
      end
      puts "#{@name} is doing the potty dance!"
    end
    if @food_in_belly <= 0
      if @awake != true
        @awake = true
        puts  "#{@name} suddenly awakes"
      end
      puts "#{@name} is STARVING and he EATS YOU!!!"
      exit
    end
    if @awake != true
      puts "#{@name} snores loudly!!!"
    end

  end
end

# Code to Test the Dragon

my_dragon = Dragon.new "Puff"
my_dragon.feed
my_dragon.walk
my_dragon.feed
my_dragon.feed
my_dragon.feed
my_dragon.feed
my_dragon.nap
my_dragon.play
my_dragon.feed
my_dragon.feed
my_dragon.feed
my_dragon.feed
my_dragon.feed
