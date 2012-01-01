class Call
  attr_reader :started_at, :duration
  
  def initialize(started_at, duration)
    @started_at, @duration = started_at, duration
  end
  
  def price
    0
  end
end
