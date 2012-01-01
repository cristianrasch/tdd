class Call
  attr_reader :started_at, :duration
  
  def initialize(started_at, duration)
    @started_at, @duration = started_at, duration
  end
  
  def price
    0
  end
  
  def local?
    is_a? LocalCall
  end
  
  def long_distance?
    is_a? LongDistanceCall
  end
  
  def international?
    is_a? InternationalCall
  end
end
