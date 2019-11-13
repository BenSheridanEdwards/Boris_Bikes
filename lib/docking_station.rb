require_relative 'bike'

class DockingStation
  
  def initialize(capacity = 20)
    @dock = []
    @capacity = capacity
  end

  def release_bike
    
    if dock.size <= 1
        bike = dock.pop
        return bike if bike.working?
    elsif
        @dock.size == 0 
        return "Dock empty"
    end 

  end

  def dock_bike(bike, working = true)
    raise "Full Dock, please come back later" if full? #Create test
    raise "Your bike is broken! Take it to the garage" unless bike.working? #Create test
    @dock << bike
  end

  end

  private

  attr_reader :dock

  def full?
    dock.count >= capacity
  end

  def empty?
    dock.empty?
  end
end 