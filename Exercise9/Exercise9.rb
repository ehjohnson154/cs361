#make it *clean*
#defining flexible interfaces

class Employee

    def prepare(bike)
        bike.setup
    end
  
  end
  

  #make each class have a single "clean" function of same name and data


  class BmxBike
  
    def setup
      puts 'Cleaning...'
    end
  
  end
  
  class RoadBike
  
    def setup
      puts 'Lubricating gears...'
    end
  
  end
  
  class MountainBike
  
    def setup
      puts 'Adjusting suspension...'
    end
  
  end
  
  class Tricycle
  
    def setup
      puts 'Adjusting seat...'
    end
  
  end
  
  bikes = [BmxBike.new, RoadBike.new, MountainBike.new, Tricycle.new]
  
  employee = Employee.new
  
  bikes.each do |bike|
    employee.prepare(bike)
  end