#Uncle Bob provides a lot of examples on what to avoid when it comes to naming. 
#What qualities define a "meaningful name," and why is it important?

=begin
Uncle 
A meaningful name should be:
-Intention revealing
-Uses meaningful distinctions
-Pronouncable
-Searchable
-Uses a single word for each concept
-Is not a pun
-Has meaningful context
-Is not encoded, part of a confusing mental map, does not mislead the user

Its important because we do so much of it, that it ought to be good.
Good names help us understand our own code, and the code of others better.
It also allows others to quickly review our code and follow along better
=end 
rescue => exception
    
end

class Bike
    # ...
  end
  
  class RedBicycle < Bike
  
    AMOUNT = 10
  
    def initialize(height, weight, color)
      @height = height
      @weight = weight
      @color = color
    end
  
    def getColor
      @color
    end
  
    def getHeight
      @height
    end
  
    def reduceWeightBy10
      @weight -= AMOUNT
    end
  end


