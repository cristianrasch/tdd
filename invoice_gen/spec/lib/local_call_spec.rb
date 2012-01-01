require File.expand_path("lib/local_call.rb")
require "date"

describe LocalCall do
  it "should have a price of 20 cents/minute in business hours" do
    started_at = DateTime.strptime('02/01/2012 10:15', '%d/%m/%Y %H:%M')
    call = LocalCall.new(started_at, 2)
    call.price.should == 40
  end
  
  it "should have a price of 10 cents/minute when not in business hours" do
    started_at = DateTime.strptime('02/01/2012 22:15', '%d/%m/%Y %H:%M')
    call = LocalCall.new(started_at, 2)
    call.price.should == 20
  end
  
  it "should have a price of 10 cents/minute on weekends" do
    started_at = DateTime.strptime('01/01/2012 09:15', '%d/%m/%Y %H:%M')
    call = LocalCall.new(started_at, 2)
    call.price.should == 20
  end
end
