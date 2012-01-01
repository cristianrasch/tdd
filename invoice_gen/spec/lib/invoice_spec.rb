require File.expand_path("lib/invoice.rb")
require File.expand_path("lib/local_call.rb")
require File.expand_path("lib/long_distance_call.rb")
require File.expand_path("lib/international_call.rb")
require "date"

describe Invoice do
  before do
    @invoice = Invoice.new
    started_at = DateTime.strptime('02/01/2012 10:15', '%d/%m/%Y %H:%M')
    @calls = [LocalCall.new(started_at, 3), LongDistanceCall.new(started_at, 2), 
              InternationalCall.new(started_at, 4, InternationalCall::Area::REST_OF_THE_WORLD)]
  end
  
  it "should have a standard monthly fee" do
    @invoice.total.should == 1000
  end
  
  it "should be able to add calls" do
    @calls.each_with_index do |call, i|
      @invoice.add_call(call).size.should == i+1
    end
  end
  
  it "should have a total cost" do
    @calls.each { |call| @invoice.add_call(call) }
    @invoice.total.should == 1720
  end
end
