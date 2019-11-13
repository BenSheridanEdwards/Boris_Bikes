require_relative 'bike'

class DockingStation
  
  def initialize
    @dock = []
    @capacity = 20
  end

  def release_bike
    
    if dock.size == 0 
        return "Dock empty"
    elsif dock.size <= 1
        bike = dock.pop
        return bike if bike.working?
    end 

  end

  def dock_bike(bike, working = true)
   
    if dock.size == capacity
      return "Can't return, dock full"
    else 
      dock << bike
    end

  end
end 