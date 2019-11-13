class Bike

    attr_accessor :working

    def initialize(working = true)
     @working = true 
    end

    def working?
        working
    end 
end 