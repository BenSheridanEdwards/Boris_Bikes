require_relative 'bike'

class DockingStation

  DEFAULT_CAPACITY = 20
  
  attr_reader :capacity
  attr_reader :bike_dock

  def initialize(capacity = DEFAULT_CAPACITY)
    @bike_dock = []
    @capacity = capacity
  end

  def dock(bike)
    raise 'Docking station full' if full?

    @bike_dock << bike
  end

  def release
    raise 'No bikes available' if empty?

    @counter = 0
    while @counter < @bike_dock.length
      if @bike_dock[@counter].working?
        return @bike_dock.delete_at(@counter)
      end
      
      @counter += 1
      raise 'All bikes broken' if all_bikes_broken
    end
  end

private

  def full?
    @bike_dock.count >= @capacity
  end

  def empty?
    @bike_dock.empty?
  end

  def all_bikes_broken
    @counter == @bike_dock.length
  end
end
