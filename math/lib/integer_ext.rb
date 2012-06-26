module IntegerExt
  def fib
    @fib ||= {}
    @fib[self] ||= case
                     when self.zero? then 0
                     when self == 1 then 1
                     else (self-1).fib + (self-2).fib
                   end
  end
  
  def factorial
    return 1 if self < 2
    @factorial ||= {}
    @factorial[self] ||= self * (self - 1).factorial
  end
end

class Integer
  include IntegerExt
end
