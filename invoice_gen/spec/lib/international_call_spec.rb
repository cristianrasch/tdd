require File.expand_path("lib/international_call.rb")
require "date"

describe InternationalCall do
  it "should have a price of 50 cents/minute for calls to South America" do
    call = InternationalCall.new(nil, 4, InternationalCall::Area::SOUTH_AMERICA)
    call.price.should == 200
  end
  
  it "should have a price of 70 cents/minute for calls to North America & Europe" do
    call = InternationalCall.new(nil, 4, InternationalCall::Area::NORTH_AMERICA_AND_EUROPE)
    call.price.should == 280
  end
  
  it "should have a price of 150 cents/minute for calls to the rest of the world" do
    call = InternationalCall.new(nil, 4, InternationalCall::Area::REST_OF_THE_WORLD)
    call.price.should == 600
  end
end
