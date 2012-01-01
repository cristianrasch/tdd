require File.expand_path("lib/call.rb")
require File.expand_path("lib/local_call.rb")
require File.expand_path("lib/long_distance_call.rb")
require File.expand_path("lib/international_call.rb")
require "date"

describe Call do
  before do
    @started_at = DateTime.strptime('02/01/2012 10:15', '%d/%m/%Y %H:%M')
  end
  
  it "should have a start time, a duration and a price" do
    call = Call.new(@started_at, 5)
    call.started_at.should == @started_at
    call.duration.should == 5
    call.price.should be_zero
  end

  it "should be able to tell if it's a local call" do
    call = LocalCall.new(@started_at, 5)
    call.should be_local
  end
  
  it "should be able to tell if it's a long distance call" do
    call = LongDistanceCall.new(@started_at, 5)
    call.should be_long_distance
  end
  
  it "should be able to tell if it's local an international call" do
    call = InternationalCall.new(@started_at, 5, InternationalCall::Area::SOUTH_AMERICA)
    call.should be_international
  end
end
