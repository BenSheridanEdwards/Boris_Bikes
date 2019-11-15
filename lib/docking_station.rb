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
    fail "Docking station full" if full?
    @dock << bike
  end

  def release_bike
    fail 'No bikes available' if empty?
    @dock.each_with_index {|bike, index| dock.delete_at(index) ; return bike if bike.working? }
    fail "All bikes broken"
  end

  private

  def full?
    @dock.count >= @capacity
  end 

  def empty?
    @dock.empty?
  end

end