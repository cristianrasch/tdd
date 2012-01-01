require File.expand_path("lib/long_distance_call.rb")
require "date"

describe LongDistanceCall do
  it "should have a price of 30 cents/minute" do
    started_at = DateTime.strptime('02/01/2012 10:15', '%d/%m/%Y %H:%M')
    call = LongDistanceCall.new(started_at, 5)
    call.price.should == 150
  end
end
