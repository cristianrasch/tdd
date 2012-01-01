require "call"

class LongDistanceCall < Call
  def price
    30 * duration
  end
end
