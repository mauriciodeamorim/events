ActionController::Routing::Routes.draw do |map|
  map.root :controller => "events", :action => "index" 
  # map.root :controller => "pages", :action => "show", :id => "about"
  map.resources :events
  map.with_options(:controller => "pages", :action => "show") do |pages|
    pages.connect "/about", :id => "about"
    pages.connect "/pages/:id"
  end
end
