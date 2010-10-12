require 'spec_helper'

describe EventsController do

  describe "GET 'index'" do
    before(:each) do
      @events ||= Event.create :name => "xxxx"
    end
    
    it "assigns all events as @events" do
      controller.stub(:find).with(:all).and_return([@events])
      get :index
      assigns[:events].should == [@events]
    end
    
  end

end
