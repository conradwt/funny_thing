ActionController::Routing::Routes.draw do |map|
  map.resources :forums
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
