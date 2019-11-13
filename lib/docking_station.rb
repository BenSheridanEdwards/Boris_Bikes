require_relative 'bike'

class DockingStation
  
  def initialize(capacity = 20)
    @dock = []
    @capacity = capacity
  end

  def release_bike
    if dock.size <= 1
        dock.each { |bike| return bike if bike.working? }
        raise "All bikes broken"
    elsif
        @dock.count == 0 
        raise "No bikes available, please come back later."
    end 
  end

  def dock_bike(bike, working = true)
    raise "Full dock, please come back later." if full? #Create test
    raise "Your bike is broken! Please take it to the nearest garage." unless bike.working? #Create test
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