require "call"

class LocalCall < Call
  def price
    if in_business_hours?
      20 * duration
    else
      10 * duration
    end
  end
  
  private
  
  def in_business_hours?
    (1..5).include?(started_at.cwday) && (8..20).include?(started_at.hour)
  end
end
