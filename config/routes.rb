ActionController::Routing::Routes.draw do |map|
  # map.root :index 
  map.resources :events
  map.with_options(:controller => "pages", :action => "show") do |pages|
    pages.connect "/about", :id => "about"
  end
end
