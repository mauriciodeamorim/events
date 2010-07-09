require 'spec_helper'

describe PagesController do
  describe "handling SHOW" do    
    it "should render the about page" do
      get :show, :id => "about"
      response.should render_template('pages/show/about')
    end
    
    it "should render 404 for unknown templates" do
      get :show, :id => "unknown_page"
      response.should_not be_success
    end
  end
end
