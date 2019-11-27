class Bike

  attr_accessor :working

  def initialize(working = true)
    @working = true
  end

  def working?
    @working
  end

  def broken?
    !working
  end

  def report_broken
    @working = false
  end
end
