ActionController::Routing::Routes.draw do |map|
  map.resources :events
  map.connect ":action", :controller => "pages"
end
