class Bicycle
  attr_reader :seat

  def initialize(gear)
    @wheels = 2
    @seat = 1
    @gear = gear
  end

  def to_s
    "wheels - #{@wheels},  seat - #{@seat}, gear- #{@gear}"
  end
end

class Tandem < Bicycle

  def initialize(gear)
    super(gear)
    @seat = self.seat + 2
    @color = "white"
  end

  def to_s
    super + ", color - #{@color}"
  end

end


b = Bicycle.new(3)
p b.to_s

tandem = Tandem.new(6)
p tandem.to_s
