require_relative 'bike'

class DockingStation

DEFAULT_CAPACITY = 20

attr_reader :capacity
attr_reader :dock

  def initialize(capacity=DEFAULT_CAPACITY)
    @dock = []
    @capacity = capacity
  end

  def dock_bike(bike)
    raise "Docking station full" if full?
    @dock << bike
  end

  def release_bike
    raise 'No bikes available' if empty?
    counter = 0
    while counter < @dock.length
      if @dock[counter].working?
        return @dock.delete_at(counter)
        @dock.delete_at(counter)
      end
      counter += 1
      raise 'All bikes broken' if all_bikes_broken
    end

  end

  private

  def full?
    @dock.count >= @capacity
  end 

  def empty?
    @dock.empty?
  end

  def all_bikes_broken
    counter = @dock.length
  end


end


