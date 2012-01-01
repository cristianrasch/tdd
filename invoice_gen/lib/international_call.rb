require "call"

class InternationalCall < Call
  class Area
    SOUTH_AMERICA = 1
    NORTH_AMERICA_AND_EUROPE = 2
    REST_OF_THE_WORLD = 3
  end
  
  attr_reader :target_area
  
  def initialize(started_at, duration, target_area)
    super(started_at, duration)
    @target_area = target_area
  end
  
  def price
    price_per_minute * duration
  end
  
  private
  
  def price_per_minute
    case target_area
    when Area::SOUTH_AMERICA then 50
    when Area::NORTH_AMERICA_AND_EUROPE then 70
    when Area::REST_OF_THE_WORLD then 150
    else 0
    end
  end
end
