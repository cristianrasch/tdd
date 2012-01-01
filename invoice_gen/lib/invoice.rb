class Invoice
  def initialize
    @calls = []
  end
  
  def add_call(call)
    @calls << call
  end
  
  def total
    STANDARD_MONTHLY_FEE + @calls.inject(0) { |sum, call| sum + call.price }
  end
  
  private
  
  STANDARD_MONTHLY_FEE = 1000
end
