require 'spec_helper'

describe PagesController do
  describe "handling SHOW" do
    def do_get
      get :show, :id => "about"
    end
    
    it "should render the about page" do
      do_get
      response.should render_template('pages/show/about')
    end
  end
end
