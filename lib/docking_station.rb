require_relative 'bike'

class DockingStation

attr_reader :bike

  def initialize
    @dock = []
    capacity = 20
  end

  def release_bike
    @bike
  end

  def dock(bike)
    @bike = bike
    @dock << bike
  end
end